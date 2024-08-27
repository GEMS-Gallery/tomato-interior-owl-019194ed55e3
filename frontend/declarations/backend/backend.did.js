export const idlFactory = ({ IDL }) => {
  const Result = IDL.Variant({ 'ok' : IDL.Float64, 'err' : IDL.Text });
  return IDL.Service({
    'calculate' : IDL.Func(
        [IDL.Text, IDL.Opt(IDL.Float64), IDL.Opt(IDL.Float64)],
        [Result],
        [],
      ),
  });
};
export const init = ({ IDL }) => { return []; };
