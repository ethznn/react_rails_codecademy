@Records = React.createClass
    getInitialState: ->
      records: this.props.data
    getDefaultProps: ->
      records: []
    addRecord: (record) ->
      records = @state.records.slice()
      records.push record
      @setState records: records
    render: ->
      React.DOM.div
        className: 'records'
        React.DOM.h2
          className: 'title'
          'Records'
        React.createElement RecordForm, handleNewRecord: @addRecord
        React.DOM.hr null