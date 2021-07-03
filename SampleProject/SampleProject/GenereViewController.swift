//
//  GenereViewController.swift
//  SampleProject
//
//  Created by Prince Yadav on 02/07/21.
//  Copyright © 2021 Prince Yadav. All rights reserved.
//

import UIKit

class GenereViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var books = (Action:["Jurassic park", "Rise Of The Six- The Preston Six Series", "The Hobbit, or There and Back Again", "The Hunger Games", "Tom Clancy"],
                 Classics:["1984", "Harry Potter and the Sorcerer's Stone", "Pride and Prejudice", "The Diary of a Young Girl", "To Kill a Mockingbird"],
                 Comic:["Preludes & Nocturnes", "The Complete Maus", "The Complete Persepolis", "V for Vendetta", "Watchmen"],
                 Fantasy:["For the Wolf ", "Neon Gods", "The Chosen and the Beautiful", "The Jasmine Throne", "The Wolf and the Woodsman"],
                 Historic:["Don't Ask My Name- A Survivor's Story of Lies and Deceptions", "Ethel Rosenberg- An American Tragedy", "How the Word Is Passed- A Reckoning with the History of Slavery Across America","The Woman They Could Not Silence- One Woman, Her Incredible Fight for Freedom, and the Men Who Tried to Make Her Disappear","Unwell Women- Misdiagnosis and Myth in a Man-Made World"],
                 Horror:["Dream Girl", "Star Eater", "Survive the Night", "The Other Black Girl", "Things Have Gotten Worse Since We Last Spoke"],
                 Mystery:["And Then There Were None", "Angels & Demons", "In Cold Blood", "Rebecca", "The Girl with the Dragon Tattoo"],
                 Romance:["Instructions for Dancing", "One Last Stop", "Seven Days in June", "The Wisteria Society of Lady Scoundrels (Dangerous Damsels, #1)", "To Sir, with Love"],
                 Science:["Blood Like Magic", "Gearbreakers", "Girl One", "Star Eater", "The Darkness Outside Us"],
                 Thrillers:["Ace of Spades", "Maidens", "Survive the Night", "The Box in the Woods ", "The Other Black Girl"]
    )
    var authers = (Action:["Michael Crichton", "Matt Ryan", " J.R.R. Tolkien", "Suzanne Collins", "J.R.R. Tolkien"],
                   Classics:["George Orwell", " J.K. Rowling", "Jane Austen", "Anne Frank", "Harper Lee"],
                   Comic:["Alan Moore ", "Art Spiegelman", "Alan Moore ", "Marjane Satrapi", "Neil Gaiman"],
                   Fantasy:["Hannah F. Whitten", "Katee Robert", "Nghi Vo", "Tasha Suri", "Ava Reid"],
                   Historic:["Erika Hecht","Anne Sebba"," Clint Smith", "Kate Moore", "Elinor Cleghorn"],
                   Horror:["Laura Lippman", "Eric LaRocca", " Riley Sager", "Zakiya Dalila Harris", "Eric LaRocca"],
                   Mystery:["And Then There Were None", "Dan Brown ", "Truman Capote", " Daphne du Maurier", "Stieg Larsson" ],
                   Romance:["Nicola Yoon", "Casey McQuiston", "Tia Williams", "India Holton", "Lauren Layne"],
                   Science:["Liselle Sambury", "Zoe Hana Mikuta", "Sara Flannery Murphy", "Kerstin Hall", "Eliot Schrefer"],
                   Thrillers:["Faridah Àbíké-Íyímídé*","Alex Michaelides*","Riley Sager","Maureen Johnson","Zakiya Dalila Harris"]
    
    )
    
    var genereSelected:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(books.Action)
        print(authers.Action)
        self.title = genereSelected
        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.textColor = UIColor.red
        switch genereSelected {
        case "Action":
            cell.textLabel?.text = books.Action[indexPath.row]
            cell.detailTextLabel?.text = authers.Action[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Action[indexPath.row])
        case "Classics":
            cell.textLabel?.text = books.Classics[indexPath.row]
            cell.detailTextLabel?.text = authers.Classics[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Classics[indexPath.row])
        case "Comic":
            cell.textLabel?.text = books.Comic[indexPath.row]
            cell.detailTextLabel?.text = authers.Comic[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Comic[indexPath.row])
        case "Fantasy":
            cell.textLabel?.text = books.Fantasy[indexPath.row]
            cell.detailTextLabel?.text = authers.Fantasy[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Fantasy[indexPath.row])
        case "Historic":
            cell.textLabel?.text = books.Historic[indexPath.row]
            cell.detailTextLabel?.text = authers.Historic[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Historic[indexPath.row])
        case "Horror":
            cell.textLabel?.text = books.Horror[indexPath.row]
            cell.detailTextLabel?.text = authers.Horror[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Horror[indexPath.row])
        case "Mystery":
            cell.textLabel?.text = books.Mystery[indexPath.row]
            cell.detailTextLabel?.text = authers.Mystery[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Mystery[indexPath.row])
        case "Romance":
            cell.textLabel?.text = books.Romance[indexPath.row]
            cell.detailTextLabel?.text = authers.Romance[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Romance[indexPath.row])
        case "Science":
            cell.textLabel?.text = books.Science[indexPath.row]
            cell.detailTextLabel?.text = authers.Science[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Science[indexPath.row])
        case "Thrillers":
            cell.textLabel?.text = books.Thrillers[indexPath.row]
            cell.detailTextLabel?.text = authers.Thrillers[indexPath.row]
            cell.imageView?.image = UIImage(named: books.Thrillers[indexPath.row])
        default:
            print("")
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.Action.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
