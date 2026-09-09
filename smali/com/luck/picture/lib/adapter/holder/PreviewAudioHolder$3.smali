.class public final Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 0

    iput p3, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->onLongPressDownload()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$3;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->onLongPressDownload()V

    :cond_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
