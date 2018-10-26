
import UIKit

//library to play media
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    
    //creating audio player of type AVAudioPlayer
    var audioPlayer: AVAudioPlayer!
    
    
    
    let notes = ["note1","note2","note3","note3","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //connection of button
    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFile: notes[sender.tag - 1])
        
    }
    
    func playSound(soundFile : String) {
        
        //creating a url that refers to the sound file
        let soundURL = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        
        //do-try-catch method
        do {
            //appending audio file to the created audio player
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            //printing error
            print(error)
        }
        
        //playing audio file
        audioPlayer.play()
        
    }
    
  

}

