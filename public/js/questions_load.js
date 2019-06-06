let load = document.querySelectorAll("#loadMore");
load.addEventListener("click", loadQuestions);


    function loadQuestions(){
        $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
        });
        $.ajax({
                method: 'get',
                url: '/topic/all',
                success: function (data) {
                    let htmlContent='';
        for(let i=0;i<data.length;i++)
        {
            let info=data[i];
            htmlContent+='<div class="media result">'+
                    '<div class="media-left d-flex"></div>'+
                    '<div class="media-body">'+
                     '<a href="profile/'+$info.username+'")}}>'+
                           ' <h4 class="media-heading resultHeader">'+
                            '<img src="images/'+$info.photo+'")}} alt="profile" class="media-object rounded-circle profilePic" style="width:3rem">'+$info.username+'</h4>'+
                       '</a>'+
                        '<div class="container">'+
                         '<a class="question" href="questions/'+$info.id_question+'")}}>'+$info.title+'</a>'+
                        '</div>'+                     
                        '<div class="row footerResult">';
                        if ($info.hasbest>=1){
                            htmlContent+='<img src="../images/answered-13.svg" alt="corret" class="media-object align-self-center column" style="width:2rem" id="catQuestion">'
                        }
                        htmlContent+= '<p class="resultFooter align-self-center">'+$info.contagem;
                                if ($info.contagem==1){
                                    htmlContent+='answer';
                                }else{
                                    htmlContent+='answers';
                                }
                        htmlContent+='</p>'+
                           '<p class="resultFooter align-self-center">'+
                                $info.votes;
                                if ($info.votes==1){
                                    htmlContent+='vote';
                                }
                                else{
                                    htmlContent+='votes';
                                }
                        htmlContent+= '</p>'+
                        '<p class="resultFooter align-self-center">'+$info.date+'</p>'+
                         '<img src="images/'+$info.caticon+'" alt="categorie" class="media-object" style="width:2rem; height: 2rem;">'+
                        '</div>'+
                        '</div>'+
                        '</div>';
        
                            }
                
                    document.querySelectorAll("#loadMore").remove();
                    document.querySelectorAll(".results").append(htmlContent);
                    
                }
            });
        }