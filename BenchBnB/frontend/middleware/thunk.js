
const thunk = ({dispatch, getState}) => next => action => {
    if(typeof action.type === 'function') {
        return action(dispatch, getState);
    }
    return next(action);
}

export default thunk;