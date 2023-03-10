var sim__rbf_8m =
[
    [ "Copyright", "sim__rbf_8m.html#ae3c0f9729f9430d19232ce92ca319390", null ],
    [ "DAMAGES", "sim__rbf_8m.html#a64d414f84a31788c6870acd7b530ce5f", null ],
    [ "error", "sim__rbf_8m.html#a88d8b7ab003615b7d211a6928eaf9a36", null ],
    [ "gradphi", "sim__rbf_8m.html#a370c7dd72996c5b52a5bf43fe4d874f4", null ],
    [ "license", "sim__rbf_8m.html#a804a4c2ab744d95dc3ee0067ea747b2e", null ],
    [ "log", "sim__rbf_8m.html#aaa031e013cf528aaab25b05870f3aa5e", null ],
    [ "round", "sim__rbf_8m.html#acc51a9fbfb8fde7898db31720ccce86d", null ],
    [ "TORT", "sim__rbf_8m.html#a2595af5ca9b3cd510f280013a8cc76a7", null ],
    [ "case", "sim__rbf_8m.html#a89bd5bad7cd73fcad5fb05a921b13970", null ],
    [ "CONTRACT", "sim__rbf_8m.html#a3b3e50c2eb64ac46d735432647d8692d", null ],
    [ "DIRECT", "sim__rbf_8m.html#a55cf41c74453fbc5df5a5b641251d06f", null ],
    [ "dX", "sim__rbf_8m.html#a1a1dfd06ddf0d8dc580f88a2c4ab029a", null ],
    [ "EXEMPLARY", "sim__rbf_8m.html#a353436e68bfb06f86fbfe70d9829a2aa", null ],
    [ "forms", "sim__rbf_8m.html#a1fd912960e9679761909148634060164", null ],
    [ "function", "sim__rbf_8m.html#a1246bb923eb101b913c9532fb196ce43", null ],
    [ "gradphi", "sim__rbf_8m.html#a27db748f5d4c567ce8a22a2e1af9e3ac", null ],
    [ "gradz", "sim__rbf_8m.html#a3456277d0c3b11622b74cf09510f2796", null ],
    [ "i", "sim__rbf_8m.html#a6f6ccfcf58b31cb6412107d9d5281426", null ],
    [ "INCIDENTAL", "sim__rbf_8m.html#a73a820a26c9d8c299974ee26f8405f45", null ],
    [ "INCLUDING", "sim__rbf_8m.html#a5e0e0b69b1176dd1849b3d4081e9c08c", null ],
    [ "INDIRECT", "sim__rbf_8m.html#aae11b7049086505e9ba77d5f6aebc001", null ],
    [ "LIABILITY", "sim__rbf_8m.html#a643ef14cccf9753189bd542e1f4d9343", null ],
    [ "met", "sim__rbf_8m.html#a741be12c80387cd490d553e6a796dccf", null ],
    [ "modification", "sim__rbf_8m.html#a95539523845e44f96a2484394de0e5b2", null ],
    [ "nargin< 5 basisfunction='gaussian';end[N_r, N_dim]=size(Xc);%number of rbf centres, number of dimensionsN_p=size(X, 1);%number of pointsif numel(k_i)==1 k_i=k_i *ones(N_r);endphi=zeros(N_p, N_r);%rbf outputsfor i=1:N_r if k_i(i)==0 phi(:, i)=1;else r=sqrt(sum((repmat(Xc(i,:), N_p, 1) -X(:,:)).^2, 2));%distance from point Xc to X switch basisfunction case { 'gaussian', 'Gaussian'} phi(:, i)=exp(-k_i(i).*r.^2);case { 'phs', 'polyharmonicspline'} if r==0 phi(:, i)=0;else if round(k_i(i)/2)==k_i(i)/2%even phi(:, i)=r.^k_i(i).*log(r);phi(r==0, i)=0;%avoid log(0) else phi(:, i)=r.^k_i(i);end end otherwise error('unknown basis function') end endendz=phi *W;%outputif nargout >", "sim__rbf_8m.html#aff8b566257b3066fa900f09607592d33", null ],
    [ "notice", "sim__rbf_8m.html#a34b0eaacaa8a1f5b12c1fff8f4bb0961", null ],
    [ "phi", "sim__rbf_8m.html#ae75ed10ee874d3439a78de11d8c3a710", null ],
    [ "SPECIAL", "sim__rbf_8m.html#a15dfed8f88ca743bd8b5ea680115d548", null ],
    [ "TO", "sim__rbf_8m.html#a85df25df801c9b5b254cf53b50bd07ca", null ],
    [ "WARRANTIES", "sim__rbf_8m.html#af40539bea206a144110efec3bfa8c625", null ]
];