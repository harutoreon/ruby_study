p 'Dog'.tr('g', 't')

rock = 'Rock and Roll'
p rock.sub('Ro', 'Ni')
p rock.gsub('Ro', 'Ni')
p rock

rock.gsub!('Ro', 'Do')
p rock
