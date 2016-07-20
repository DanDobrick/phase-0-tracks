kitchen = {
  food_storage: {
    pantry: [
      'bread',
      'rice',
      'potatoes',
      'oatmeal'
    ],
    refrigerator: {
      freezer: [
        'ice',
        'ice cream',
        'pork loin',
        'mixed vegetables'
      ],
      fridge: {
        condiments: [
          'ketchup',
          'mustard',
          'soy sauce',
          'ranch dressing',
          'mayonnaise',
        ],
        hot_sauce: [
          'Franks',
          'Louisiana',
          'crystal'
        ],
        meat: [
            'bacon',
            'chicken',
            'cold cuts'
          ]
        },
      cupboard:[
          'chicken stock',
          'chips',
          'pickles',
          'cookies'
      ]
    }
  },
  appliances: [
    'refrigerator',
    'blender',
    'dishwasher'
  ]
}

puts kitchen[:food_storage][:pantry][2] == 'potatoes'

puts kitchen[:food_storage][:refrigerator][:freezer][0] == 'ice'

puts kitchen[:food_storage][:refrigerator][:fridge][:meat] ==  ['bacon', 'chicken', 'cold cuts']

puts kitchen[:appliances][1] == 'blender'