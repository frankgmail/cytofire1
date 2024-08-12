// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import SwiftUI

struct ContentView: View {
  @StateObject
  var viewModel = ConversationViewModel()

  @StateObject
  var functionCallingViewModel = FunctionCallingViewModel()

    var body: some View {
        
        NavigationStack {
            VStack(alignment: .center) {
                Image("iconAI")
            }
            .padding()
            
            List {

                NavigationLink {
                    PhotoReasoningScreen()
                } label: {
                    Label(" Cardio Intelligence", systemImage: "heart.circle")
                        .font(.largeTitle)
                }
                
                NavigationLink {
                    PhotoReasoningScreen()
                } label: {
                    Label(" Cardiovascular Theraputics", systemImage: "cross.vial")
                        .font(.largeTitle)
                }
                NavigationLink {
                    FunctionCallingScreen().environmentObject(functionCallingViewModel)
                } label: {
                    Label(" Electro Physiology", systemImage: "waveform.path.ecg.rectangle")
                        .font(.largeTitle)
                }
                
                NavigationLink {
                    ConversationScreen()
                        .environmentObject(viewModel)
                } label: {
                    Label(" Cell Biology", systemImage: "atom")
                        .font(.largeTitle)
                }
                NavigationLink {
                    SummarizeScreen()
                } label: {
                    Label(" Stem Cell Protocols", systemImage: "microbe")
                        .font(.largeTitle)
                }
                NavigationLink {
                    FunctionCallingScreen().environmentObject(functionCallingViewModel)
                } label: {
                    Label(" Regenerative Medicine", systemImage: "syringe")
                        .font(.largeTitle)
                }
                NavigationLink {
                    FunctionCallingScreen().environmentObject(functionCallingViewModel)
                } label: {
                    Label(" Neural Therapeutics", systemImage: "brain.head.profile")
                        .font(.largeTitle)
                }
                NavigationLink {
                    FunctionCallingScreen().environmentObject(functionCallingViewModel)
                } label: {
                    Label(" Cardio Therapeutics", systemImage: "heart.circle")
                        .font(.largeTitle)
                }
            } // end List
            .navigationTitle("CytoBio AI")
                
        } // End NavigationStack
    }
}

#Preview {
  ContentView()
}
