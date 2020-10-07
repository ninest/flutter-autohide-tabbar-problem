# Flutter Autohiding application bar with tabs

- Flutter app bar + tab bar with hide on scroll functionality

Please see [this](https://stackoverflow.com/q/55187332/8677167) stackoverflow question.

## Structure
- MaterialApp
  - DefaultTabController
    - Scaffold
      - NestedScrollView
        - SliverAppBar
          - TabBar
        - TabBarView

## Problem

1. I have to set the `snap` of the `SliverAppBar` to `true`. Without this, the application bar will not show when I scroll back up.

  Although this is works, it is not the behaviour I am looking for. I want the application bar to show smoothly (similar to WhatsApp) rather than coming into view even if you scroll very little.


2. When I scroll down and change tabs, a little bit of the content is cut out of view.

  Below is a GIF showing the behaviour:

![Problem](tabbar.gif)



## Built with

- `DefaultTabController`
- `NestedScrollView`
- `SliverAppBar`
- `TabBar` + `TabBarView`
