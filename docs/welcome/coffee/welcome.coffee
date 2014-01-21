_Drop = Drop.createContext classPrefix: 'drop'

isMobile = $(window).width() < 567

init = ->
    setupHero()
    setupExamples()

setupHero = ->
    drop = new _Drop
        target: $('.hero .drop-target')[0]
        classes: 'drop-theme-arrows-bounce-dark drop-hero'
        position: 'bottom center'
        constrainToWindow: false
        constrainToScrollParent: false
        openOn: ' '
        content: '''
            <h1>Drop</h1>
            <h2>The best dropdown library on<br/>either side of the Mississippi.</h2>
            <p>
                <a class="button" href="http://github.com/HubSpot/drop">★ On Github</a>
            </p>
        '''

    $ -> setTimeout (-> drop.open()), 500

    # drop1 = drop2 = undefined

    # drop1 = new _Drop
    #     target: $('.drop-demo .drop-target')[0]
    #     classes: 'drop-theme-arrows-bounce'
    #     position: 'bottom right'
    #     constrainToWindow: false
    #     constrainToScrollParent: false
    #     openOn: 'click'
    #     content: '<div class="drop-target">Click Me</div>'

    # drop1.once 'open', ->
    #     drop2 = new _Drop
    #         target: $(drop1.dropContent).find('.drop-target')[0]
    #         classes: 'drop-theme-arrows-bounce'
    #         position: 'bottom left'
    #         constrainToWindow: false
    #         constrainToScrollParent: false
    #         openOn: 'click'
    #         content: '<div style="height: 100px; width: 100px"></div>'

    # drop1.on 'close', ->
    #     drop2.close?()

setupExamples = ->
    $('.example').each ->
        $example = $ @
        theme = $example.data('theme')

        $target = $example.find('.drop-target')
        $target.addClass theme

        content = $example.find('.drop-content').html()

        drop = new _Drop
            target: $target[0]
            classes: theme
            position: 'bottom center'
            constrainToWindow: true
            constrainToScrollParent: false
            openOn: 'click'
            content: content

init()
