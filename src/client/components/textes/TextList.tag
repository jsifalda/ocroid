var TextList = require('./TextList');

require('./components/TextItem.tag')

<text-list>

  <div className='feature-list'>
    <div className='row'>
      <div className='12u'>
        <section>
          <text-item each={ textes } text={ this } />
        </section>
      </div>
    </div>
  </div>

  TextList @
</text-list>
