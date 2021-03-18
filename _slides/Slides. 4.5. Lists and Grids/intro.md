# Lists, Grids, more...

---
### Lists, Grids, more...
- Lists
    - ListView and ListTile widgets
- Grids
    - GridView 
- Tabbar
    - DefaultTabBarController
    - TabBar with tabs
    - TabBarView
- BottomNavigationBar
    - BottomNavigationBarItem

---
### Basic Listview
```
new ListView(
  children: <Widget>[
    new ListTile(
      leading: new Icon(Icons.map),
      title: new Text('Map'),
    ),
    new ListTile(
      leading: new Icon(Icons.photo_album),
      title: new Text('Album'),
    ),
    ....
  ],
);
```

---
### Basic Listview
- Each Item as a Widget!
- ListView.builder

```
new ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return new ListTile(
      title: new Text('${items[index]}'),
    );
  },
);
```

### Basic ListView
- Different items in the list
```
final items = new List<ListItem>.generate(
  1200,
  (i) => i % 6 == 0
      ? new HeadingItem("Heading $i")
      : new MessageItem("Sender $i", "Message body $i"),
);
```

---
### Gridview
Gridview display data in a grid
```
new GridView.count(
  crossAxisCount: 2,
  children: new List.generate(100, (index) {
    return new Center(
      child: new Text(
        'Item $index',
        style: Theme.of(context).textTheme.headline,
      ),
    );
  }),
);
```

---
### TabBar
Displays tabs where each item represents a page
Steps:
- Create a TabController
- Create the tabs
- Create content for each tab

---
### TabBar

```
new DefaultTabController(
  length: 3,
  child: new Scaffold(
    appBar: new AppBar(
      bottom: new TabBar(
        tabs: [
          new Tab(icon: new Icon(Icons.directions_car)),
          new Tab(icon: new Icon(Icons.directions_transit)),
          new Tab(icon: new Icon(Icons.directions_bike)),
        ],
      ),
    ),
  ),
);
```
---
### TabBar
Create content for each tab

Note: Order is important and must correspond to the order of the tabs in the  TabBar!

```
body: new TabBarView(
  children: [
    new Icon(Icons.directions_car),
    new Icon(Icons.directions_transit),
    new Icon(Icons.directions_bike),
  ],
);
```

---
<!-- .slide: data-background="url('images/demo.jpg')" --> 
<!-- .slide: class="lab" -->
## Demo time!
Demo. TabBar

---
<!-- .slide: data-background="url('images/lab2.jpg')" --> 
<!-- .slide: class="lab" -->
## Lab time!
