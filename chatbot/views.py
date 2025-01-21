from django.http import JsonResponse
from .models import Listing

#   VIEWS
def get_listings(request):
    query = request.GET.get('query')
    if 'under' in query and 'in' in query:
        words = query.split()
        try:
            price = float(words[words.index('under') + 1])
            location = words[words.index('in') + 1]
            listings = Listing.objects.filter(price__lt=price, location__icontains=location)
            return JsonResponse({'listings': list(listings.values())})
        except (ValueError, IndexError):
            return JsonResponse({'error': 'Invalid query structure.'})
    return JsonResponse({'error': 'Invalid query format.'})

def find_room(request):
    price_limit = request.GET.get('price', 850)
    mrt_station = request.GET.get('mrt', 'Yew Tee')
    listings = Listing.objects.filter(price__lt=price_limit, mrt_station=mrt_station)
    
    data = [
        {
            'name': listing.name,
            'price': listing.price,
            'type': listing.type,
            'size': listing.size,
        }
        for listing in listings
    ]
    
    return JsonResponse(data, safe=False)
