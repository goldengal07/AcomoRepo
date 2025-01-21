document.getElementById('send-query').addEventListener('click', function() {
    const query = document.getElementById('query').value;

    if (query) {
        // Handle 'find room' queries
        const url = `/chatbot/find-room/?price=2000&station=Dover`;  // Modify to fit dynamic input
        
        fetch(url)
            .then(response => response.json())
            .then(data => {
                displayListings(data);  // Use the displayListings function to show results
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }
});

function displayListings(listings) {
    const messages = document.getElementById('messages');
    messages.innerHTML = '';  // Clear previous messages

    if (listings && listings.length > 0) {
        listings.forEach(listing => {
            const message = document.createElement('div');
            message.textContent = `${listing.name} | ${listing.location} | $${listing.price}`;
            messages.appendChild(message);
        });
    } else {
        const message = document.createElement('div');
        message.textContent = 'No listings found.';
        messages.appendChild(message);
    }
}
                
