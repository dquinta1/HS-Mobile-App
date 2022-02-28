# TODOS

### Data Layer

#### Packages

- Image Storage: implement proper Failure classes
- Blogs: resolve TODOS (implement Failure class)

#### HSMap APIs

- Contentful: create graphQL repository to hold this API service
- Contentful: service returns list of up-date blogs/news
- Contentful: service returns a specific blog/news given its ID

#### Shared Preferences and Cache

- Shared Preferences: create repository to instantiate internal service for Shared Prefs
- Shared Preferences: store user's credentials and avatar photo

### Logic Layer

#### News

- News View: resolve TODOs
- News View: Add a skeleton loading visual (similar to AntD's) for the cards while fetching
- News View: NetworkImage has a loading delay, need a loading state and placeholder fallback
- News View: Navigating to News Details has a weird behavior where after loading it stays on view
for a moment and then goes to Details

#### Profile

- Profile Page: resolve TODOs
- Edit Profile Form: resolve TODOs
- Visual Profile Form: by default attempt to access photo avatar from Shared Prefs, fallback to Auth

#### Auth

- Third Party: Integrate with Google and others
- Form Validation: Add more informative and visual validation error messages

#### Test (BLoCs)

- Sign Up: Image Upload
- Profile: Edit Profile
- Profile: Image Upload

### Presentation Layer

- Log In
- Sign Up
- Profile
- Edit Profile
- News View
- News Details

#### ADD REMAINING UI STUFF HERE
