//
//  DataStoreImp.swift
//  SEARCHBOOKS
//
//  Created by Ousmane DIAGNE on 07/02/2023.
//  Copyright © 2023 Ousmane DIAGNE. All rights reserved.
//

import Foundation

final class DataStoreImp: DataStore {
    
    var mockDatasBooks: [Book] {
        let JSON = """
        {
          "kind": "books#volumes",
          "totalItems": 159,
          "items": [
            {
              "kind": "books#volume",
              "id": "bzdlAAAAMAAJ",
              "etag": "lz13A81QF54",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/bzdlAAAAMAAJ",
              "volumeInfo": {
                "title": "Madame Bovary",
                "subtitle": "moeurs de province",
                "authors": [
                  "Gustave Flaubert",
                  "Thierry Laget"
                ],
                "publisher": "Editions Gallimard",
                "publishedDate": "2001",
                "description": "Fille d'un riche fermier, Emma Rouault épouse Charles Bovary, officier de santé et veuf récent d'une femme tyrannique. Élevée dans un couvent, Emma aspire à vivre dans le monde de rêve dont parlent les romans à l'eau de rose qu'elle y a lu. Un bal au château de Vaubyessard la persuade qu'un tel monde existe, mais le décalage qu'elle découvre avec sa propre vie déclenche chez elle une maladie nerveuse. La naissance d'une fille la distrait un peu, mais bientôt Emma cède aux avances de Rodolphe. Elle veut s'enfuir avec son amant qui, lâche, l'abandonne... [RERO]",
                "industryIdentifiers": [
                  {
                    "type": "OTHER",
                    "identifier": "UOM:39015069318353"
                  }
                ],
                "readingModes": {
                  "text": false,
                  "image": false
                },
                "pageCount": 532,
                "printType": "BOOK",
                "categories": [
                  "Adultery"
                ],
                "averageRating": 3,
                "ratingsCount": 1,
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.2.2.0.preview.0",
                "panelizationSummary": {
                  "containsEpubBubbles": false,
                  "containsImageBubbles": false
                },
                "imageLinks": {
                  "smallThumbnail": "http://books.google.com/books/content?id=bzdlAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
                  "thumbnail": "http://books.google.com/books/content?id=bzdlAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
                },
                "language": "fr",
                "previewLink": "http://books.google.fr/books?id=bzdlAAAAMAAJ&q=bovary+inauthor:flaubert&dq=bovary+inauthor:flaubert&hl=&cd=1&source=gbs_api",
                "infoLink": "http://books.google.fr/books?id=bzdlAAAAMAAJ&dq=bovary+inauthor:flaubert&hl=&source=gbs_api",
                "canonicalVolumeLink": "https://books.google.com/books/about/Madame_Bovary.html?hl=&id=bzdlAAAAMAAJ"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "NOT_FOR_SALE",
                "isEbook": false
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "NO_PAGES",
                "embeddable": false,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": false
                },
                "pdf": {
                  "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=bzdlAAAAMAAJ&hl=&source=gbs_api",
                "accessViewStatus": "NONE",
                "quoteSharingAllowed": false
              },
              "searchInfo": {
                "textSnippet": "Fille d&#39;un riche fermier, Emma Rouault épouse Charles Bovary, officier de santé et veuf récent d&#39;une femme tyrannique. Élevée dans un couvent, Emma aspire à vivre dans le monde de rêve dont parlent les romans à l&#39;eau de rose qu&#39;elle ..."
              }
            },
            {
              "kind": "books#volume",
              "id": "G2_zLQEACAAJ",
              "etag": "a2o0aOYmGI0",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/G2_zLQEACAAJ",
              "volumeInfo": {
                "title": "Madame Bovary",
                "subtitle": "Roman",
                "authors": [
                  "Gustave Flaubert"
                ],
                "publishedDate": "2012",
                "industryIdentifiers": [
                  {
                    "type": "ISBN_10",
                    "identifier": "3458362339"
                  },
                  {
                    "type": "ISBN_13",
                    "identifier": "9783458362333"
                  }
                ],
                "readingModes": {
                  "text": false,
                  "image": false
                },
                "pageCount": 455,
                "printType": "BOOK",
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "preview-1.0.0",
                "imageLinks": {
                  "smallThumbnail": "http://books.google.com/books/content?id=G2_zLQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
                  "thumbnail": "http://books.google.com/books/content?id=G2_zLQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
                },
                "language": "de",
                "previewLink": "http://books.google.fr/books?id=G2_zLQEACAAJ&dq=bovary+inauthor:flaubert&hl=&cd=2&source=gbs_api",
                "infoLink": "http://books.google.fr/books?id=G2_zLQEACAAJ&dq=bovary+inauthor:flaubert&hl=&source=gbs_api",
                "canonicalVolumeLink": "https://books.google.com/books/about/Madame_Bovary.html?hl=&id=G2_zLQEACAAJ"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "NOT_FOR_SALE",
                "isEbook": false
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "NO_PAGES",
                "embeddable": false,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": false
                },
                "pdf": {
                  "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=G2_zLQEACAAJ&hl=&source=gbs_api",
                "accessViewStatus": "NONE",
                "quoteSharingAllowed": false
              },
              "searchInfo": {
                "textSnippet": "Flaubert war ein unverbesserlicher Perfektionist im Umgang mit Sprache und hegte eine jahrelange Zurückhaltung, was eine Veröffentlichung seiner Manuskripte anbelangte. Madame Bovary war der erste Roman Flauberts, er erschien 1856."
              }
            },
            {
              "kind": "books#volume",
              "id": "v6KMEAAAQBAJ",
              "etag": "NPpwyWjXmMQ",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/v6KMEAAAQBAJ",
              "volumeInfo": {
                "title": "Madame Bovary",
                "subtitle": "(Penguin Classics Deluxe Edition)",
                "authors": [
                  "Gustave Flaubert"
                ],
                "publisher": "National Geographic Books",
                "publishedDate": "2011-10-04",
                "description": "The award-winning, nationally bestselling translation, by Lydia Davis, of one of the world’s most celebrated novels Emma Bovary is the original desperate housewife. Beautiful but bored, she spends lavishly on clothes and on her home and embarks on two disappointing affairs in an effort to make her life everything she believes it should be. Soon heartbroken and crippled by debts, she takes drastic action, with tragic consequences for her husband and daughter. In this landmark new translation of Gustave Flaubert's masterwork, award-winning writer and translator Lydia Davis honors the nuances and particulars of Flaubert's legendary prose style, giving new life in English to the book that redefined the novel as an art form. For more than seventy years, Penguin has been the leading publisher of classic literature in the English-speaking world. With more than 1,700 titles, Penguin Classics represents a global bookshelf of the best works throughout history and across genres and disciplines. Readers trust the series to provide authoritative texts enhanced by introductions and notes by distinguished scholars and contemporary authors, as well as up-to-date translations by award-winning translators.",
                "industryIdentifiers": [
                  {
                    "type": "ISBN_13",
                    "identifier": "9780143106494"
                  },
                  {
                    "type": "ISBN_10",
                    "identifier": "014310649X"
                  }
                ],
                "readingModes": {
                  "text": true,
                  "image": false
                },
                "pageCount": 0,
                "printType": "BOOK",
                "categories": [
                  "Fiction"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "preview-1.0.0",
                "panelizationSummary": {
                  "containsEpubBubbles": false,
                  "containsImageBubbles": false
                },
                "imageLinks": {
                  "smallThumbnail": "http://books.google.com/books/content?id=v6KMEAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
                  "thumbnail": "http://books.google.com/books/content?id=v6KMEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.fr/books?id=v6KMEAAAQBAJ&dq=bovary+inauthor:flaubert&hl=&cd=3&source=gbs_api",
                "infoLink": "http://books.google.fr/books?id=v6KMEAAAQBAJ&dq=bovary+inauthor:flaubert&hl=&source=gbs_api",
                "canonicalVolumeLink": "https://books.google.com/books/about/Madame_Bovary.html?hl=&id=v6KMEAAAQBAJ"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "NOT_FOR_SALE",
                "isEbook": false
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "NO_PAGES",
                "embeddable": false,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": false
                },
                "pdf": {
                  "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=v6KMEAAAQBAJ&hl=&source=gbs_api",
                "accessViewStatus": "NONE",
                "quoteSharingAllowed": false
              },
              "searchInfo": {
                "textSnippet": "Readers trust the series to provide authoritative texts enhanced by introductions and notes by distinguished scholars and contemporary authors, as well as up-to-date translations by award-winning translators."
              }
            },
            {
              "kind": "books#volume",
              "id": "lHLl-ok-_oAC",
              "etag": "HZM8j7kPaXw",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/lHLl-ok-_oAC",
              "volumeInfo": {
                "title": "Madame Bovary",
                "authors": [
                  "Gustave Flaubert",
                  "Leo Bersani"
                ],
                "publisher": "Bantam Classics",
                "publishedDate": "1982-06-01",
                "description": "&quot;First published in 1857 ... this edition published in 2003&quot;--T.p. verso.",
                "industryIdentifiers": [
                  {
                    "type": "ISBN_10",
                    "identifier": "0553211013"
                  },
                  {
                    "type": "ISBN_13",
                    "identifier": "9780553211016"
                  }
                ],
                "readingModes": {
                  "text": false,
                  "image": false
                },
                "pageCount": 424,
                "printType": "BOOK",
                "categories": [
                  "Fiction"
                ],
                "averageRating": 4,
                "ratingsCount": 3,
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "0.0.1.0.preview.0",
                "imageLinks": {
                  "smallThumbnail": "http://books.google.com/books/content?id=lHLl-ok-_oAC&printsec=frontcover&img=1&zoom=5&source=gbs_api",
                  "thumbnail": "http://books.google.com/books/content?id=lHLl-ok-_oAC&printsec=frontcover&img=1&zoom=1&source=gbs_api"
                },
                "language": "en",
                "previewLink": "http://books.google.fr/books?id=lHLl-ok-_oAC&dq=bovary+inauthor:flaubert&hl=&cd=4&source=gbs_api",
                "infoLink": "http://books.google.fr/books?id=lHLl-ok-_oAC&dq=bovary+inauthor:flaubert&hl=&source=gbs_api",
                "canonicalVolumeLink": "https://books.google.com/books/about/Madame_Bovary.html?hl=&id=lHLl-ok-_oAC"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "NOT_FOR_SALE",
                "isEbook": false
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "NO_PAGES",
                "embeddable": false,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": false
                },
                "pdf": {
                  "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=lHLl-ok-_oAC&hl=&source=gbs_api",
                "accessViewStatus": "NONE",
                "quoteSharingAllowed": false
              },
              "searchInfo": {
                "textSnippet": "&quot;First published in 1857 ... this edition published in 2003&quot;--T.p. verso."
              }
            },
            {
              "kind": "books#volume",
              "id": "8s2BxQEACAAJ",
              "etag": "MPaC7cdCn0I",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/8s2BxQEACAAJ",
              "volumeInfo": {
                "title": "Madame Bovary",
                "authors": [
                  "Gustave Flaubert"
                ],
                "publishedDate": "2019-05-22",
                "industryIdentifiers": [
                  {
                    "type": "ISBN_10",
                    "identifier": "2253183466"
                  },
                  {
                    "type": "ISBN_13",
                    "identifier": "9782253183464"
                  }
                ],
                "readingModes": {
                  "text": false,
                  "image": false
                },
                "pageCount": 669,
                "printType": "BOOK",
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "preview-1.0.0",
                "panelizationSummary": {
                  "containsEpubBubbles": false,
                  "containsImageBubbles": false
                },
                "language": "fr",
                "previewLink": "http://books.google.fr/books?id=8s2BxQEACAAJ&dq=bovary+inauthor:flaubert&hl=&cd=5&source=gbs_api",
                "infoLink": "http://books.google.fr/books?id=8s2BxQEACAAJ&dq=bovary+inauthor:flaubert&hl=&source=gbs_api",
                "canonicalVolumeLink": "https://books.google.com/books/about/Madame_Bovary.html?hl=&id=8s2BxQEACAAJ"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "NOT_FOR_SALE",
                "isEbook": false
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "NO_PAGES",
                "embeddable": false,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": false
                },
                "pdf": {
                  "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=8s2BxQEACAAJ&hl=&source=gbs_api",
                "accessViewStatus": "NONE",
                "quoteSharingAllowed": false
              },
              "searchInfo": {
                "textSnippet": "L&#39;histoire d&#39;Emma Bovary, qui valut un procès à son auteur en 1857, s&#39;inscrit dans un univers ordinaire, minutieusement dépeint par l&#39;écriture très maîtrisée de Flaubert."
              }
            },
            {
              "kind": "books#volume",
              "id": "5o4GAAAAQAAJ",
              "etag": "3Q8wGqs4umo",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/5o4GAAAAQAAJ",
              "volumeInfo": {
                "title": "Madame Bovary",
                "subtitle": "moeurs de province",
                "authors": [
                  "Gustave Flaubert"
                ],
                "publishedDate": "1885",
                "industryIdentifiers": [
                  {
                    "type": "OTHER",
                    "identifier": "OXFORD:N10267813"
                  }
                ],
                "readingModes": {
                  "text": false,
                  "image": true
                },
                "pageCount": 470,
                "printType": "BOOK",
                "categories": [
                  "Adultery"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "5.10.10.0.full.1",
                "panelizationSummary": {
                  "containsEpubBubbles": false,
                  "containsImageBubbles": false
                },
                "imageLinks": {
                  "smallThumbnail": "http://books.google.com/books/content?id=5o4GAAAAQAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                  "thumbnail": "http://books.google.com/books/content?id=5o4GAAAAQAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "fr",
                "previewLink": "http://books.google.fr/books?id=5o4GAAAAQAAJ&printsec=frontcover&dq=bovary+inauthor:flaubert&hl=&cd=6&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=5o4GAAAAQAAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=5o4GAAAAQAAJ"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "FREE",
                "isEbook": true,
                "buyLink": "https://play.google.com/store/books/details?id=5o4GAAAAQAAJ&rdid=book-5o4GAAAAQAAJ&rdot=1&source=gbs_api"
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "ALL_PAGES",
                "embeddable": true,
                "publicDomain": true,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": false,
                  "downloadLink": "http://books.google.fr/books/download/Madame_Bovary.epub?id=5o4GAAAAQAAJ&hl=&output=epub&source=gbs_api"
                },
                "pdf": {
                  "isAvailable": true,
                  "downloadLink": "http://books.google.fr/books/download/Madame_Bovary.pdf?id=5o4GAAAAQAAJ&hl=&output=pdf&sig=ACfU3U0CzKdcV3yY4qYvcNOAvaIXBZIT8g&source=gbs_api"
                },
                "webReaderLink": "http://play.google.com/books/reader?id=5o4GAAAAQAAJ&hl=&source=gbs_api",
                "accessViewStatus": "FULL_PUBLIC_DOMAIN",
                "quoteSharingAllowed": false
              }
            },
            {
              "kind": "books#volume",
              "id": "KK_xoQEACAAJ",
              "etag": "0GhuPkpAOJU",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/KK_xoQEACAAJ",
              "volumeInfo": {
                "title": "Madame Bovary",
                "authors": [
                  "Jean-Daniel Mallet"
                ],
                "publishedDate": "2014-08-27",
                "description": "Une analyse de l'oeuvre au programme du bac de littérature française en Tle L., en lien avec l'objet d'étude &quot; Ecrire, publier, lire &quot;.Cet ouvrage en propose une analyse approfondie en deux parties : le résumé et les repères pour la lecture ; les problématiques essentielles.",
                "industryIdentifiers": [
                  {
                    "type": "ISBN_10",
                    "identifier": "2218969203"
                  },
                  {
                    "type": "ISBN_13",
                    "identifier": "9782218969201"
                  }
                ],
                "readingModes": {
                  "text": false,
                  "image": false
                },
                "pageCount": 125,
                "printType": "BOOK",
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "preview-1.0.0",
                "language": "fr",
                "previewLink": "http://books.google.fr/books?id=KK_xoQEACAAJ&dq=bovary+inauthor:flaubert&hl=&cd=7&source=gbs_api",
                "infoLink": "http://books.google.fr/books?id=KK_xoQEACAAJ&dq=bovary+inauthor:flaubert&hl=&source=gbs_api",
                "canonicalVolumeLink": "https://books.google.com/books/about/Madame_Bovary.html?hl=&id=KK_xoQEACAAJ"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "NOT_FOR_SALE",
                "isEbook": false
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "NO_PAGES",
                "embeddable": false,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": false
                },
                "pdf": {
                  "isAvailable": false
                },
                "webReaderLink": "http://play.google.com/books/reader?id=KK_xoQEACAAJ&hl=&source=gbs_api",
                "accessViewStatus": "NONE",
                "quoteSharingAllowed": false
              },
              "searchInfo": {
                "textSnippet": "Une analyse de l&#39;oeuvre au programme du bac de littérature française en Tle L., en lien avec l&#39;objet d&#39;étude &quot; Ecrire, publier, lire &quot;.Cet ouvrage en propose une analyse approfondie en deux parties : le résumé et les repères pour la ..."
              }
            },
            {
              "kind": "books#volume",
              "id": "ZlHHCQAAQBAJ",
              "etag": "R08jSEcjs6g",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/ZlHHCQAAQBAJ",
              "volumeInfo": {
                "title": "Bibliolycée - Madame Bovary n° 52 - Livre élève",
                "authors": [
                  "Gustave Flaubert",
                  "Isabelle de Lisle"
                ],
                "publisher": "Hachette Éducation",
                "publishedDate": "2009-07-01",
                "description": "Tout le monde a entendu parler de Madame Bovary, le chef-d'oeuvre de Gustave Flaubert qui fit scandale en 1857. Mais, au fond, qui est Mme Bovary? Une mère soucieuse de la réussite sociale de son fils Charles? Une veuve aux pieds froids qui épouse le jeune homme en secondes noces? Emma Rouault, la seconde femme de Charles? Ces trois personnages, appelés par le titre, suffisent à nous montrer que le roman de Flaubert n'est pas seulement l'histoire du mariage et de l'adultère d'Emma ; par des détours amusants ou émouvants, l'écrivain interroge notre existence, notre ennui, nos rêves, nos déceptions, et la place que la société nous propose. Le texte intégral annoté Un questionnaire bilan de première lecture Des questionnaires d'analyse de l'oeuvre Quatre corpus accompagnés de questions d'observation, de travaux d'écriture et de lectures d'images Une présentation de Gustave Flaubert et de son époque Un aperçu du genre de l'oeuvre et de sa place dans l'histoire littéraire",
                "industryIdentifiers": [
                  {
                    "type": "ISBN_13",
                    "identifier": "9782011610560"
                  },
                  {
                    "type": "ISBN_10",
                    "identifier": "2011610567"
                  }
                ],
                "readingModes": {
                  "text": true,
                  "image": true
                },
                "pageCount": 448,
                "printType": "BOOK",
                "categories": [
                  "Study Aids"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": false,
                "contentVersion": "1.6.5.0.preview.3",
                "panelizationSummary": {
                  "containsEpubBubbles": false,
                  "containsImageBubbles": false
                },
                "imageLinks": {
                  "smallThumbnail": "http://books.google.com/books/content?id=ZlHHCQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                  "thumbnail": "http://books.google.com/books/content?id=ZlHHCQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "fr",
                "previewLink": "http://books.google.fr/books?id=ZlHHCQAAQBAJ&printsec=frontcover&dq=bovary+inauthor:flaubert&hl=&cd=8&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=ZlHHCQAAQBAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=ZlHHCQAAQBAJ"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "FOR_SALE",
                "isEbook": true,
                "listPrice": {
                  "amount": 4.49,
                  "currencyCode": "EUR"
                },
                "retailPrice": {
                  "amount": 4.49,
                  "currencyCode": "EUR"
                },
                "buyLink": "https://play.google.com/store/books/details?id=ZlHHCQAAQBAJ&rdid=book-ZlHHCQAAQBAJ&rdot=1&source=gbs_api",
                "offers": [
                  {
                    "finskyOfferType": 1,
                    "listPrice": {
                      "amountInMicros": 4490000,
                      "currencyCode": "EUR"
                    },
                    "retailPrice": {
                      "amountInMicros": 4490000,
                      "currencyCode": "EUR"
                    },
                    "giftable": true
                  }
                ]
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "PARTIAL",
                "embeddable": true,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": true,
                  "acsTokenLink": "http://books.google.fr/books/download/Bibliolyc%C3%A9e_Madame_Bovary_n_52_Livre_%C3%A9-sample-epub.acsm?id=ZlHHCQAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
                },
                "pdf": {
                  "isAvailable": true,
                  "acsTokenLink": "http://books.google.fr/books/download/Bibliolyc%C3%A9e_Madame_Bovary_n_52_Livre_%C3%A9-sample-pdf.acsm?id=ZlHHCQAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
                },
                "webReaderLink": "http://play.google.com/books/reader?id=ZlHHCQAAQBAJ&hl=&source=gbs_api",
                "accessViewStatus": "SAMPLE",
                "quoteSharingAllowed": false
              },
              "searchInfo": {
                "textSnippet": "Tout le monde a entendu parler de Madame Bovary, le chef-d&#39;oeuvre de Gustave Flaubert qui fit scandale en 1857. Mais, au fond, qui est Mme Bovary? Une mère soucieuse de la réussite sociale de son fils Charles?"
              }
            },
            {
              "kind": "books#volume",
              "id": "YJMSCwAAQBAJ",
              "etag": "YKye1Hp2eIk",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/YJMSCwAAQBAJ",
              "volumeInfo": {
                "title": "Mme Bovary",
                "subtitle": "Mœurs de province",
                "authors": [
                  "Gustave Flaubert"
                ],
                "publisher": "Kinoscript",
                "publishedDate": "2012-08-22",
                "description": "L’ironie tragique de Mme Bovary, ce sont les clichés auxquels on le réduit généralement. « Mme Bovary, c’est moi». Charles Bovary, c’est lui. Un roman de l’ennui. Le réalisme du roman. La dénonciation des lectures romantiques. Le pessimisme flaubertien, le procès pour immoralisme... Bref, un véritable petit dictionnaire de lieux communs que le pauvre Flaubert aurait certainement ajouté, en appendice, à son Dictionnaire des idées reçues à lui. Les 3 raisons inédites de lire Mme Bovary... Emma, c’est un peu Meursault de L’Etranger, version femme. Un être dont la vie absurde fonctionne comme une machine de guerre philosophique aux lieux communs. On néglige d’ailleurs d’examiner les liens entre le premier roman de Camus et le chef-d’œuvre de Flaubert. Et pour cause, la comparaison renvoie à notre propre médiocrité, drapés que nous sommes dans note vanité. Emma, c’est aussi une Salammbô contemporaine, sortie de son palais carthaginois, déesse du romantisme, devenue réaliste comme on se fait violer sa virginité. Capable de mourir pour un coup de foudre. Princesse de l’idéalisme déchu : Rodolphe, l’homme à femme, puis Léon, le notaire de Province sont comme le rocher d’un Sisyphe féminin. Ce qu’elle n’arrive pas à faire : souscrire à l’Eternel Retour nietzschéen. Devenir ce qu’elle est. Tâche au lecteur d’achever le travail. Mais c’est aussi une anti-Atala : pour s’en convaincre, il suffit de comparer les tableaux de la mort respective des personnages. Girodet contre Fourié. Et Emma prend alors une dimension héroïque. Entre Atala et Emma, il faut préférer Emma. Un être de chair et d’os. Avec sa tragédie existentielle. Ses problèmes comme les nôtres. Une sorte d’être de papier, qui nous propulse dans des sphères philosophiques subtiles : on oublie que Flaubert, quand il écrit donne la réplique à des écrivains tels que Gobineau, qui propose une toute autre vision du monde... On doit à Flaubert le triomphe d’un certain regard sur la littérature et l’existence. A relire de toute urgence, ces clés de lectures en main. La présente édition reprend le texte original paru chez Michel Lévy Frères, en 1857.",
                "industryIdentifiers": [
                  {
                    "type": "ISBN_13",
                    "identifier": "9782367530123"
                  },
                  {
                    "type": "ISBN_10",
                    "identifier": "2367530122"
                  }
                ],
                "readingModes": {
                  "text": true,
                  "image": true
                },
                "pageCount": 455,
                "printType": "BOOK",
                "categories": [
                  "Fiction"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": true,
                "contentVersion": "1.6.6.0.preview.3",
                "panelizationSummary": {
                  "containsEpubBubbles": false,
                  "containsImageBubbles": false
                },
                "imageLinks": {
                  "smallThumbnail": "http://books.google.com/books/content?id=YJMSCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                  "thumbnail": "http://books.google.com/books/content?id=YJMSCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "fr",
                "previewLink": "http://books.google.fr/books?id=YJMSCwAAQBAJ&printsec=frontcover&dq=bovary+inauthor:flaubert&hl=&cd=9&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=YJMSCwAAQBAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=YJMSCwAAQBAJ"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "FOR_SALE",
                "isEbook": true,
                "listPrice": {
                  "amount": 0.99,
                  "currencyCode": "EUR"
                },
                "retailPrice": {
                  "amount": 0.99,
                  "currencyCode": "EUR"
                },
                "buyLink": "https://play.google.com/store/books/details?id=YJMSCwAAQBAJ&rdid=book-YJMSCwAAQBAJ&rdot=1&source=gbs_api",
                "offers": [
                  {
                    "finskyOfferType": 1,
                    "listPrice": {
                      "amountInMicros": 990000,
                      "currencyCode": "EUR"
                    },
                    "retailPrice": {
                      "amountInMicros": 990000,
                      "currencyCode": "EUR"
                    },
                    "giftable": true
                  }
                ]
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "PARTIAL",
                "embeddable": true,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": true
                },
                "pdf": {
                  "isAvailable": true
                },
                "webReaderLink": "http://play.google.com/books/reader?id=YJMSCwAAQBAJ&hl=&source=gbs_api",
                "accessViewStatus": "SAMPLE",
                "quoteSharingAllowed": false
              },
              "searchInfo": {
                "textSnippet": "L’ironie tragique de Mme Bovary, ce sont les clichés auxquels on le réduit généralement. « Mme Bovary, c’est moi»."
              }
            },
            {
              "kind": "books#volume",
              "id": "RJCWDwAAQBAJ",
              "etag": "I62ADjtQpQE",
              "selfLink": "https://www.googleapis.com/books/v1/volumes/RJCWDwAAQBAJ",
              "volumeInfo": {
                "title": "Madame Bovary (Nouvelle édition)",
                "authors": [
                  "Gustave Flaubert"
                ],
                "publisher": "Le Livre de Poche",
                "publishedDate": "2019-05-22",
                "description": "Edition enrichie (Préface, notes, dossier, biographie et bibliographie) Emma Rouault, adolescente, s’était bercée de rêves romanesques. Son mariage avec Charles Bovary, terne médecin de province, la confronte à une réalité prosaïque, dont elle cherche à s’évader par tous les moyens. Mais la maternité, l’ambition qu’elle nourrit pour Charles, le goût des belles choses qui l’entraîne à la dépense ne peuvent satisfaire cette jeune femme qui étouffe dans la société étriquée d’une petite ville normande dominée par la plate figure du pharmacien Homais. Si l’amour est son ultime espérance, sa soif d’idéal, de beauté, de grandeur, l’accule à un point de non-retour. L’histoire d’Emma Bovary, qui valut un procès à son auteur en 1857, s’inscrit dans un univers ordinaire, minutieusement dépeint par l’écriture très maîtrisée de Flaubert. Tout son art se déploie dans ce drame psychologique aux couleurs réalistes. Nouvelle édition préfacée, annotée et commentée par Jacques Neefs.",
                "industryIdentifiers": [
                  {
                    "type": "ISBN_13",
                    "identifier": "9782253258575"
                  },
                  {
                    "type": "ISBN_10",
                    "identifier": "2253258571"
                  }
                ],
                "readingModes": {
                  "text": true,
                  "image": true
                },
                "pageCount": 672,
                "printType": "BOOK",
                "categories": [
                  "Fiction"
                ],
                "maturityRating": "NOT_MATURE",
                "allowAnonLogging": true,
                "contentVersion": "1.2.2.0.preview.3",
                "panelizationSummary": {
                  "containsEpubBubbles": false,
                  "containsImageBubbles": false
                },
                "imageLinks": {
                  "smallThumbnail": "http://books.google.com/books/content?id=RJCWDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                  "thumbnail": "http://books.google.com/books/content?id=RJCWDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                },
                "language": "fr",
                "previewLink": "http://books.google.fr/books?id=RJCWDwAAQBAJ&printsec=frontcover&dq=bovary+inauthor:flaubert&hl=&cd=10&source=gbs_api",
                "infoLink": "https://play.google.com/store/books/details?id=RJCWDwAAQBAJ&source=gbs_api",
                "canonicalVolumeLink": "https://play.google.com/store/books/details?id=RJCWDwAAQBAJ"
              },
              "saleInfo": {
                "country": "FR",
                "saleability": "FOR_SALE",
                "isEbook": true,
                "listPrice": {
                  "amount": 3.49,
                  "currencyCode": "EUR"
                },
                "retailPrice": {
                  "amount": 3.49,
                  "currencyCode": "EUR"
                },
                "buyLink": "https://play.google.com/store/books/details?id=RJCWDwAAQBAJ&rdid=book-RJCWDwAAQBAJ&rdot=1&source=gbs_api",
                "offers": [
                  {
                    "finskyOfferType": 1,
                    "listPrice": {
                      "amountInMicros": 3490000,
                      "currencyCode": "EUR"
                    },
                    "retailPrice": {
                      "amountInMicros": 3490000,
                      "currencyCode": "EUR"
                    },
                    "giftable": true
                  }
                ]
              },
              "accessInfo": {
                "country": "FR",
                "viewability": "PARTIAL",
                "embeddable": true,
                "publicDomain": false,
                "textToSpeechPermission": "ALLOWED",
                "epub": {
                  "isAvailable": true,
                  "acsTokenLink": "http://books.google.fr/books/download/Madame_Bovary_Nouvelle_%C3%A9dition-sample-epub.acsm?id=RJCWDwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
                },
                "pdf": {
                  "isAvailable": true,
                  "acsTokenLink": "http://books.google.fr/books/download/Madame_Bovary_Nouvelle_%C3%A9dition-sample-pdf.acsm?id=RJCWDwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
                },
                "webReaderLink": "http://play.google.com/books/reader?id=RJCWDwAAQBAJ&hl=&source=gbs_api",
                "accessViewStatus": "SAMPLE",
                "quoteSharingAllowed": false
              },
              "searchInfo": {
                "textSnippet": "L’histoire d’Emma Bovary, qui valut un procès à son auteur en 1857, s’inscrit dans un univers ordinaire, minutieusement dépeint par l’écriture très maîtrisée de Flaubert."
              }
            }
          ]
        }
        """
        let jsonData = JSON.data(using: .utf8)!
        let decodedBooks: Librairy = try! JSONDecoder().decode(Librairy.self, from: jsonData)
        return decodedBooks.items
    }
    
    func getAllBooks() -> [Book] {
        return mockDatasBooks
    }
    
    func getBook(by id: Int) -> Book? {
        return (id <= (mockDatasBooks.count - 1) && id >= 0 ) ? mockDatasBooks[id] : nil
    }
    
    
}
