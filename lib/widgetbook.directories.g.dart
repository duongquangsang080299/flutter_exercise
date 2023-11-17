// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:soccer_club_app/widgetbook.dart' as _i2;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'core',
    children: [
      _i1.WidgetbookFolder(
        name: 'color',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'AppColor',
            useCase: _i1.WidgetbookUseCase(
              name: 'Color',
              builder: _i2.appColor,
            ),
          )
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'presentations',
    children: [
      _i1.WidgetbookFolder(
        name: 'layout',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'SCBottomNavigationBar',
            useCase: _i1.WidgetbookUseCase(
              name: 'Bottom Navigation Bar',
              builder: _i2.bottomNavigationBar,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'widgets',
        children: [
          _i1.WidgetbookComponent(
            name: 'SCAppBar',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'AppBar Home',
                builder: _i2.appBarHome,
              ),
              _i1.WidgetbookUseCase(
                name: 'AppBar Main',
                builder: _i2.appBar,
              ),
            ],
          ),
          _i1.WidgetbookComponent(
            name: 'SCButton',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Sign In',
                builder: _i2.signInButton,
              ),
              _i1.WidgetbookUseCase(
                name: 'Welcome Screen Button',
                builder: _i2.welcomeButton,
              ),
            ],
          ),
          _i1.WidgetbookComponent(
            name: 'SCCard',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Card Avatar',
                builder: _i2.cardAvatar,
              ),
              _i1.WidgetbookUseCase(
                name: 'Card Fixture',
                builder: _i2.cardFixture,
              ),
            ],
          ),
          _i1.WidgetbookLeafComponent(
            name: 'SCDotsIndicator',
            useCase: _i1.WidgetbookUseCase(
              name: 'Dots Indicator',
              builder: _i2.dotsIndicator,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'SCText',
            useCase: _i1.WidgetbookUseCase(
              name: 'Text',
              builder: _i2.textWidget,
            ),
          ),
        ],
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'Widget',
        useCase: _i1.WidgetbookUseCase(
          name: 'Onboarding Screen Button',
          builder: _i2.goshtButton,
        ),
      )
    ],
  ),
];
