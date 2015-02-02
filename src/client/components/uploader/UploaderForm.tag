var UploaderForm = require('./UploaderForm.coffee');

require('./components/SubmitButton.tag');
require('./components/FileInput.tag');

<uploader-form>

  <div>
    <p>Upload image which you want to convert</p>
    
    <form onsubmit={ onSubmit }>
      
      <div className='row'>
        <div className='8u -3u'>
          <div className='row'>
            <div className='6u'>
              <file-input />
            </div>
            <div className='3u'>
              <submit-button />
            </div>
          </div>
        </div>
      </div>
    </form>

  </div>

  UploaderForm @
</uploader-form>
