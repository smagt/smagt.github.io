---
blog: true
date: 2024-06-30
---
```js  
const papers = dv.pages()  
    .filter(p => {  
        return p.tags && p.tags.includes("paper");  
    })  
    .map(p => {  
        let updatedDate = "";  
        if (p.updated) {  
            try {  
                // Check if p.updated is a Date object or can be converted to a Date  
                const dateObj = new Date(p.updated);  
                if (!isNaN(dateObj)) {  
                    updatedDate = dateObj.toISOString().split('T')[0];  
                }  
            } catch (e) {  
                console.error("Error parsing date for page:", p.file.path, p.updated);  
            }  
        }  
          
        return {  
            title: p.title,  
            firstauthor: p.firstauthor,  
            venue: p.venue,  
            source: p.source || '',  
            status: p.status,  
            date: updatedDate,  
            timestamp: updatedDate ? new Date(updatedDate).getTime() : 0, // Convert date to timestamp for comparison  
            link: p.file.link || ''  
        };  
    })  
    .sort(p => p.timestamp, "desc")  
  
dv.table(  
    ["title", "1st author", "venue", "source", "link", "status", "date"],  
    papers.map(paper => [  
        paper.title,  
        paper.firstauthor,  
        paper.venue,  
		paper.source ? `[link](${paper.source})` : '',  
        paper.link,  
        paper.status,  
        paper.date  
    ])  
);  
```