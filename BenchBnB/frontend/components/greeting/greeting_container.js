import { connect } from 'react-redux'
import Greeting from './greeting';

const mapStateToProps = state => {
    currentUser: state.entities.users[state.session.id]
}

const mapDispatchToProps = dispatch => {
    receiveCurrentUser: (user) => dispatch(receiveCurrentUser(user))
}

export default connect(mapStateToProps, mapDispatchToProps)(Greeting);