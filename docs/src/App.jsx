import React from 'react';

function App() {
  return (
    <div className="bg-black text-white font-sans leading-normal tracking-normal">
      <div className="container mx-auto px-4 py-8">
        <div className="text-center mb-4">
          <h1 className="text-4xl font-bold mb-2">Dark Paradigm</h1>
          <p className="text-xl font-light">An open source videogame project</p>
        </div>
        <div className="hero bg-center bg-no-repeat bg-cover h-64 relative overflow-hidden rounded-lg shadow-lg">
          <div className="bg-gray-800 absolute inset-0 rounded-lg shadow-inner"></div>
          <div className="relative pb-4/5">
            <div className="bg-red-500 absolute top-0 left-0 w-full h-full rounded-lg shadow-lg"></div>
            <div className="bg-red-400 absolute top-0 right-0 w-full h-full rounded-lg shadow-lg"></div>
          </div>
        </div>
        <div className="my-8">
          <h2 className="text-2xl font-bold mb-4">Modes</h2>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/2 px-4 mb-4 md:mb-0">
              <div className="rounded-lg shadow-lg bg-dark-brown p-8 flex flex-col">
                <h3 className="text-xl font-bold mb-4">Arcade</h3>
                <p className="font-light mb-4">A fast-paced, action-packed mode where you fight waves of zombies to survive as long as possible.</p>
                <a href="/arcade" className="btn bg-red-500 text-white rounded-full px-4 py-2">Learn More</a>
              </div>
            </div>
            <div className="md:w-1/2 px-4">
              <div className="rounded-lg shadow-lg bg-dark-brown p-8 flex flex-col">
                <h3 className="text-xl font-bold mb-4">TDS</h3>
                <p className="font-light mb-4">A tactical, strategy-based mode where you must carefully plan your attacks and defend your base from the zombie horde.</p>
                <a href="/tds" className="btn bg-red-500 text-white rounded-full px-4 py-2">Learn More</a>
              </div>
            </div>
          </div>
        </div>
        <div className="my-8">
          <h2 className="text-2xl font-bold mb-4">Features</h2>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-1.jpg" alt="Feature 1" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Save-Load System</h3>
              <p className="font-light mb-4">Our save-load system allows you to pick up where you left off, no matter how long you've been away from the game.</p>
            </div>
          </div>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-2.jpg" alt="Feature 2" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Post Processing Stack</h3>
              <p className="font-light mb-4">Our post processing stack includes a wide range of effects, such as bloom, depth of field, and color grading, to give the game a cinematic look and feel.</p>
            </div>
          </div>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-3.jpg" alt="Feature 3" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Optimized Shaders</h3>
              <p className="font-light mb-4">Our custom shaders provide realistic lighting and surface effects, while also being optimized for performance.</p>
            </div>
          </div>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-4.jpg" alt="Feature 4" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Event System</h3>
              <h3 className="text-xl font-bold mb-4">Event System</h3>
              <p className="font-light mb-4">Our event system promotes code modularity and flexibility, streamlines debugging, and removes tight coupling and dependency hell.</p>
            </div>
          </div>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-5.jpg" alt="Feature 5" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Photo Mode</h3>
              <p className="font-light mb-4">Our photo mode allows you to pause the game and take stunning in-game screenshots from any angle.</p>
            </div>
          </div>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-6.jpg" alt="Feature 6" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Custom Sounds and Tracks</h3>
              <p className="font-light mb-4">Our custom sounds and tracks add to the immersive atmosphere of the game, enhancing the overall gameplay experience.</p>
            </div>
          </div>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-7.jpg" alt="Feature 7" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Custom Textures and Skins for Guns</h3>
              <p className="font-light mb-4">Our custom textures and skins for guns allow you to personalize your weapons and make them your own.</p>
            </div>
          </div>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-8.jpg" alt="Feature 8" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Online Leaderboards</h3>
              <p className="font-light mb-4">Our online leaderboards allow you to compete with players from around the world and see how you rank against the competition.</p>
            </div>
          </div>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-9.jpg" alt="Feature 9" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Top Down Camera System</h3>
              <p className="font-light mb-4">Our top down camera system allows you to see the action from a bird's eye view, giving you a better overview of the battlefield.</p>
            </div>
          </div>
          <div className="md:flex md:flex-wrap -mx-4">
            <div className="md:w-1/10 px-4 mb-4 md:mb-0">
              <img src="/feature-10.jpg" alt="Feature 10" className="block w-full rounded-lg shadow-lg" />
            </div>
            <div className="md:w-9/10 px-4">
              <h3 className="text-xl font-bold mb-4">Fake Volumetrics</h3>
              <p className="font-light mb-4">Our fake volumetrics system creates the illusion of 3D smoke and fog, adding to the immersive atmosphere of the game.</p>
            </div>
          </div>
        </div>
        <footer className="bg-dark-brown py-8">
          <div className="container mx-auto px-4">
            <div className="flex items-center justify-between md:justify-start">
              <p className="text-gray-500 text-sm font-light tracking-wide">&copy; 2020-2022 Parking Lot Games</p>
              <a href="https://twitter.com/parkinglotgames" className="text-gray-500 hover:text-white focus:text-white transition duration-150 ease-in-out">
                <svg className="h-5 w-5" fill="currentColor" viewBox="0 0 20 20">
                <path d="M6.29 18.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0020 3.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.073 4.073 0 01.8 7.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 010 16.407a11.616 11.616 0 006.29 1.84" />
                </svg>
              </a>
            </div>
          </div>
        </footer>
        </div>
    </div>
  );
}
export default App;