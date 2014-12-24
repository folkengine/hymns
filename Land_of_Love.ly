% ŵ (UTF-8 test character: double-u circumflex)
% “ = 0147 (left formatted quote)
% ” = 0148 (right formatted quote)
% — = 0151 (dash)
% – = 0150 (shorter dash)
% © = 0169 (copyright symbol)
% ® = 0174 (registered copyright symbol)

\version "2.10.33"
#(ly:set-option 'point-and-click #f)

\paper
{
	indent = 0.0
	line-width = 185 \mm
	%between-system-space = 0.1 \mm
	%between-system-padding = #1
	%ragged-bottom = ##t
	%top-margin = 0.1 \mm
	%bottom-margin = 0.1 \mm
	%foot-separation = 0.1 \mm
	%head-separation = 0.1 \mm
	%after-title-space = 0.1 \mm
	%before-title-space = 0.1 \mm
	%paper-height = 32 \cm
	%print-page-number = ##t
	%print-first-page-number = ##t
	%between-title-space = 0.1 \mm
	%ragged-last-bottom
	%horizontal-shift
	%system-count
	%left-margin
	%paper-width
	%printallheaders
	%systemSeparatorMarkup
}

\header
{
	%dedication = ""
	title = "Land of Love"
	%subtitle = ""
	%subsubtitle = ""
	% poet = \markup{ \italic Text: }
	% composer = \markup{ \italic Music: }
	%meter = ""
	%opus = ""
	%arranger = ""
	%instrument = ""
	%piece = \markup{\null \null \null \null \null \null \null \null \null \null \null \null \null \italic Slowly \null \null \null \null \null \note #"4" #1.0 = 70-100}
	%breakbefore
	%copyright = ""
	tagline = ""
}


global =
{
	%\override Staff.TimeSignature #'style = #'()
	\time 3/4
	\key c \major
	\override Rest #'direction = #'0
	\override MultiMeasureRest #'staff-position = #0
}

sopWords = \lyricmode
{
	\override Score . LyricText #'font-size = #-1
	\override Score . LyricHyphen #'minimum-distance = #1
	\override Score . LyricSpace #'minimum-distance = #0.8
	% \override Score . LyricText #'font-name = #"Gentium"
	% \override Score . LyricText #'self-alignment-X = #-1
	\set stanza = "1. "
	%\set vocalName = "Men/Women/Unison/SATB"
        Veil not from us, Ho -- ly Spi -- rit,
        Beau -- ties that are ev -- er rife,
        In our fu -- ture home of glo -- ry,
        Land of love and end -- less life.
        Lift the cur -- tain from our vi -- sion,
        Fan the mists that dim our eyes;
        We would scan the in -- ner heav -- ens
        And from earth -- li -- ness a -- rise.
}
sopWordsTwo = \lyricmode
{
	\set stanza = "2. "
        We would take the wings of morn -- ing,
        And ex -- plore the moun -- tain's height;
        Or des -- cend in pleas -- ant val -- leys,
        Seek -- ing trea -- sures free from blight;
        In a bless -- ed sweet com -- mun -- ion
        With the loved ones gone be -- fore,
        We would clasp them near -- er to us,
        Range with them the heav'n -- ly shore.
}
sopWordsThree = \lyricmode
{
	\set stanza = "3. "
        But we'll bide our time in pa -- tience,
        And im -- prove each mo -- ment well;
        In a life of con -- se -- cra -- tion
        We will la -- bor to ex -- cel.
        Form -- ing here a joy -- ous hea -- ven,
        By cre -- a -- ting one with -- in;
        And a home of love and beau -- ty,
        Free from dis -- cord, strife and sin.
}
sopWordsFour = \lyricmode
{
	\set stanza = "4. "
        Then a -- bide, O bless -- ed spi -- rit!
        Pu -- ri -- fy us un -- to Thee,
        That a tow'r of strength and glo -- ry,
        To the na -- tions we may be;
        And our earth -- ly home fore -- sha -- dow
        Our e -- ter -- nal home a -- bove;
        Dwell -- ing place of truth and good -- ness,
        Par -- a -- dise of heav'n -- ly love.
}
sopWordsFive = \lyricmode
{
	\set stanza = "5. "
}
sopWordsSix = \lyricmode
{
	\set stanza = "6. "
}
sopWordsSeven = \lyricmode
{
	\set stanza = "7. "
}
altoWords = \lyricmode
{

}
tenorWords = \lyricmode
{

}
bassWords = \lyricmode
{

}

\score
{
	%\transpose es' d'
	<<
		\new Staff
		<<
			%\set Score.midiInstrument = "Orchestral Strings"
			%\set Score.midiInstrument = "Choir Aahs"
			\new Voice = "sopranos"
			{
				\voiceOne
				\global
				%\override Score.MetronomeMark #'transparent = ##t
				\override Score.MetronomeMark #'stencil = ##f
				\tempo 4 = 75
                                \partial 4
				e'8 e' e'4 c' g'8. e'16 d'8 c'4. g'8 a'16 (b') c''4 g' e'8 c'
                                d'2 \bar "" \break e'8 f' g'4 g' c''8 d'' e'' (d'') c''4 d''8 g' g'4 g' e'8 g' c''2 \bar "" \break
                                g'8 g' e''4 e'' d''8 d'' c'' g'4. c''8 c'' c''4 e' a'8 g'
                                e'2 \bar "" \break e'8 e' e'4 g' f'8 e' d'8 (c') c'4 g'8 a'16 (b') c''4 d' d'8 e' c'2
				\bar "|."
			}

			\new Voice = "altos"
			{
				\voiceTwo
                                c'8 c' c'4 c'4 e'8. c'16 b8 c'4. e'8 e' e'4 e' c'8 c'
                                b2 c'8 c' e'4 e' e'8 g' g' (f') e'4 g'8 e' e'4 e' c'8 e'8 e'2
                                e'8 e' g'4 g' g'8 g' e' e'4. e'8 e' e'4 c' f'8 e'
                                c'2 c'8 c' c'4 e' d'8 c' b (c') c'4 e'8 f' e'4 b4 b8 c' c'2
			}

			\new Lyrics = sopranos { s1 }
			\new Lyrics = sopranosTwo { s1 }
			\new Lyrics = sopranosThree { s1 }
			\new Lyrics = sopranosFour { s1 }
			%\new Lyrics = sopranosFive { s1 }
			%\new Lyrics = sopranosSix { s1 }
			%\new Lyrics = sopranosSeven { s1 }
			%\new Lyrics = altos { s1 }
			%\new Lyrics = tenors { s1 }
			%\new Lyrics = basses { s1 }
		>>


		\new Staff
		<<
			\clef bass
			\new Voice = "tenors"
			{
				\voiceThree
				\global
                                g8 g g4 e g8. g16 f8 e4. c'8 c' c'4 c' g8 g
                                g2 g8 a c'4 c' c'8 b c'8 (g) g4 b8 c' c'4 c' g8 g g2
                                c'8 c' c'4 c' b8 b c'8 c'4. c'8 c' c'4 c' c'8 c'
                                g2 g8 g g4 g g8 g f8 (e) e4 g8 g g4 g g8 g e2
			}

			\new Voice = "basses"
			{
				\voiceFour
                                c8 c c4 c c8. g,16 g,8 c4. c8 c c4 c c8 g,8
                                g,2 c8 c c4 c c8 c c4 c g8 c c4 c c8 c c2
                                c8 c c4 c g8 g c c4. c8 c c4 c c8 c
                                c2 c8 c c4 c g,8 g, g,4 c4 c8 c c4 g,4 g,8 g, c2
			}
		>>
		\context Lyrics = sopranos \lyricsto sopranos \sopWords
		\context Lyrics = sopranosTwo \lyricsto sopranos \sopWordsTwo
		\context Lyrics = sopranosThree \lyricsto sopranos \sopWordsThree
		\context Lyrics = sopranosFour \lyricsto sopranos \sopWordsFour
		%\context Lyrics = sopranosFive \lyricsto sopranos \sopWordsFive
		%\context Lyrics = sopranosSix \lyricsto sopranos \sopWordsSix
		%\context Lyrics = sopranosSeven \lyricsto sopranos \sopWordsSeven
		%\context Lyrics = altos \lyricsto altos \altoWords
		%\context Lyrics = tenors \lyricsto tenors \tenorWords
		%\context Lyrics = basses \lyricsto basses \bassWords
	>>
	
	\midi { }
	\layout
	{	
		\context
		{
			\Lyrics
			\override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
		}
	}
}

\markup
{
	\column
	{
		%\line{\italic Text: }
		%\line{\italic Music: }
		%\line{\italic Arrangement: }
		%\line{\italic {Words and Music:} }
		%\line{\italic {Tune Name:} }
                \line{Mt. Lebanon, N. Y.}
                %\line{\italic {Poetic Meter:} 8 7 8 7 D}
                \line{\italic Source: Shaker Music: Original Inspirational Hymns and Songs, 1884 (p. 46)}
	}
}