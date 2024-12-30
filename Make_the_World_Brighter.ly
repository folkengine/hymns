% ŵ˘ˆ┌ ┐⁀⁀© — –
% U+0311 = ̑
% U+0361 = ͡
% U + 032E = ̮

\version "2.6.5"
#(ly:set-option 'point-and-click #f)

\paper
{
	linewidth = 170 \mm
	betweensystemspace = 0.1 \cm
	indent = 0.0
	betweensystempadding = #1
	raggedbottom = ##t
	%vsize = 50 \cm
	%topmargin = 0.1 \cm
	% footsep
	% headsep
	% aftertitlespace
	% raggedlastbottom
}

\header
{
	%dedication = ""
	title = "Make the World Brighter"
	%subtitle = ""
	%subsubtitle = ""
	% poet = \markup{ \italic Text: }
	% composer = \markup{ \italic Music: }
	%meter = ""
	%opus = ""
	%arranger = ""
	%instrument = ""
	%piece = ""
	%breakbefore
	%copyright = ""
	tagline = ""
}

\score
{
	\midi { \tempo 4=76 }
	\layout
	{	
		\context
		{
			\Lyrics
			minimumVerticalExtent = #'(-0.5 . 0.5)
		}
	}
	<<
		\new Staff
		<<
			\new Voice
			% Soprano Part
			{
				\voiceOne
				%\override Staff.TimeSignature #'style = #'()
				\time 6/8
				\key des \major
				\partial 8
				aes'8 des''8. c''16 bes'8 aes'8. ges'16 f'8 bes'4. es'4 f'8 ges'8. f'16 ges'8 c''8. bes'16 aes'8 bes'4. aes'4 \bar "" \break
				aes'8 des''8. c''16 bes'8 aes'8. ges'16 f'8 bes'4. aes'4. aes'8. es'16 aes'8 c''8 es'8 bes'8 aes'4.~ aes'4 b'8\rest \break
				\repeat volta 2 
				{des''4.^\markup{\italic Chorus.}~ des''8. c''16 bes'8 c''8 ges'4~ ges'4 b'8\rest c''4. bes'8 aes'8 ges'8 f'4.~ f'4 b'8\rest \break}
				\alternative { {des''4.~ des''8 c''8 bes'8 c''8 es'4~ es'4 b'8\rest c''4. bes'8 es'8 es''8 es''4. (aes'4\fermata) b'8\rest \break} {des''4.~ des''8 c''8 des''8 es''8 bes'4~ bes'4} }
				bes'8 aes'8. aes'16 aes'8 es''16 aes'8. es''8 des''4.~ des''4
				\bar "|."
			}

			\new Voice
			% Alto Part
			{
				\voiceTwo
				des'8 des'8. des'16  des'8 des'8. des'16 des'8 c'4. c'4 des'8 c'8. c'16 c'8 ges'8. ges'16 ges'8 f'4. f'4
				f'8 des'8. des'16 des'8 des'8. des'16 des'8 c'4. des'4. es'8. es'16 es'8 es'8 des'8 des'8 c'4. (ges'4) s8
				f'4 f'8 f'8. f'16 f'8 ges'8 es'8 es'8 es'4 s8 ges'4. ges'8 f'8 es'8 des'8 des'8 des'8 des'4 s8
				f'4 f'8 f'8 f'8 f'8 es'8 c'8 c'8 c'4 s8 es'4. des'8 des'8 des'8 c'8 es'8 f'8 ges'4 s8
				f'4 f'8 f'8 f'8 f'8 ges'8 ges'8 ges'8 ges'4 ges'8 f'8. f'16 f'8 ges'16 ges'8. ges'8 f'4.~ f'4
			}

			\addlyrics
			{
				\set stanza = "1. "
				\override Score . LyricText #'font-size = #-1
				% \override Score . LyricText #'font-name = #"Gentium"
				% \override Score . LyricText #'self-alignment-X = #-1
				Go, glad -- den the lone -- ly, the drear -- y;
				Go, com -- fort the wee -- ping, the wear -- y;
				Go, Scat -- ter kind deeds on your way;
				Oh, make the world brigh -- ter to -- day!
				%soprano chorus:
				Make \skip 4 \skip 8 the world brigh -- ter!
				\skip 4 \skip 8 Go glad -- ly a -- long;
				\skip 8 \skip 8 \skip 4 Make \skip 8 \skip 8 the world brigh -- ter
				\skip 8 \skip 4 With sun -- shine and song!
				\skip 8 \skip 8 \skip 4 Make \skip 8 \skip 8 the world brigh -- ter,
				\skip 8 \skip 4 Oh, make the world brigh -- ter with song!
			}
			\addlyrics
			{
				\set stanza = "2. "
				Go forth, giv -- ing laugh -- ter for sigh -- ing;
				Go, car -- ry sweet hope to the dy -- ing;
				Go forth with the sin -- ful to pray;
				Oh, make the world brigh -- ter to -- day!
				%alto/bass/tenor chorus:
				Make, oh, make the world brigh -- ter to -- day!
				Go glad -- ly, go glad -- ly a -- long;
				Make, oh, make the world brigh -- ter to -- day
				With sun -- shine, with sun -- shine and song!
				Make, oh, make the world brigh -- ter to -- day,
			}
			\addlyrics
			{
				\set stanza = "3. "
				Wher -- ev -- er the need -- y are hid -- ing,
				Go, car -- ry God's bless -- ed pro -- vid -- ing;
				The wants of His dear ones al -- lay;
				Oh, make the world brigh -- ter to -- day!
			}
		>>


		\new Staff
		<<
			\new Voice
			\clef bass
			% Tenor Part
			{
				\voiceThree
				%\override Staff.TimeSignature #'style = #'()
				\time 6/8
				\key des \major
				f8 bes8. aes16 ges8 f8. bes16 aes8 aes4. aes4 aes8 aes8. aes16 aes8 aes8. aes16 aes8 aes4. des'4
				aes8 bes8. aes16 ges8 f8. bes16 aes8 aes4. aes4 (bes8) c'8. c'16 c'8 aes8 g8 g8 aes4.~ aes4 d8\rest
				aes4 aes8 aes8. aes16 aes8 aes8 c'8 c'8 c'4 d8\rest aes4. aes8 aes8 aes8 aes8 aes8 aes8 aes4 d8\rest
				aes4 aes8 aes8 aes8 aes8 aes8 aes8 aes8 aes4 d8\rest aes4. g8 g8 g8 aes8 c'8 des'8 es'4 d8\rest
				aes4 aes8 aes8 aes8 aes8 bes8 des'8 des'8 des'4 des'8 des'8. des'16 des'8 c'16 c'8. aes8 aes4.~ aes4
			}

			\new Voice
			% Bass Part
			{
				\voiceFour
				des8 des8. des16 des8 des8. des16 des8 ges4. ges4 f8 es8. es16 es8 aes,8. aes,16 aes,8 des4. des4
				des8 des8. des16 des8 des8. des16 des8 ges4. f4 (fes8) es8. es16 es8 es8 es8 es8 aes,4.~ aes,4 s8
				des4 des8 des8. des16 des8 es8 aes8 aes8 aes4 s8 aes,4. aes,8 aes,8 aes,8 des8 des8 des8 des4 s8
				des4 des8 des8 des8 des8 es8 es8 es8 es4 s8 es4. es8 es8 es8 aes,8 aes8 aes8 aes4\fermata s8
				des4 des8 des8 des8 des8 ges8 ges8 ges8 ges4 ges8 aes8. aes16 aes8 aes16 aes8. aes8 des4.~ des4
			}
		>>
	>>
}

\markup
{
	\column
	{
		\line{\italic Text: Mrs. Frank A. Breck}
		\line{\italic Music: Frank A. Simpkins}
	}
}