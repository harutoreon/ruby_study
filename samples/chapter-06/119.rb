p '12345abc'.match(/\d+/)[0]
p '12345abc'.match(/\d+?/)[0]

p '{abc}{123}'.match(/{.*}/)[0]
p '{abc}{123}'.match(/{.*?}/)[0]
