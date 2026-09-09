.class public final Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnCallbackListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$call:Lcom/luck/picture/lib/interfaces/OnCallbackListener;

.field public final synthetic val$media:Lcom/luck/picture/lib/entity/LocalMedia;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/interfaces/OnCallbackListener;I)V
    .locals 0

    iput p3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;->val$call:Lcom/luck/picture/lib/interfaces/OnCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCall(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/luck/picture/lib/entity/MediaExtraInfo;

    iget v0, p1, Lcom/luck/picture/lib/entity/MediaExtraInfo;->width:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    if-lez v0, :cond_0

    iput v0, v1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    :cond_0
    iget p1, p1, Lcom/luck/picture/lib/entity/MediaExtraInfo;->height:I

    if-lez p1, :cond_1

    iput p1, v1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    :cond_1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;->val$call:Lcom/luck/picture/lib/interfaces/OnCallbackListener;

    if-eqz p0, :cond_2

    iget p1, v1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iget v0, v1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_0
    check-cast p1, Lcom/luck/picture/lib/entity/MediaExtraInfo;

    iget v0, p1, Lcom/luck/picture/lib/entity/MediaExtraInfo;->width:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    if-lez v0, :cond_3

    iput v0, v1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    :cond_3
    iget p1, p1, Lcom/luck/picture/lib/entity/MediaExtraInfo;->height:I

    if-lez p1, :cond_4

    iput p1, v1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    :cond_4
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;->val$call:Lcom/luck/picture/lib/interfaces/OnCallbackListener;

    if-eqz p0, :cond_5

    iget p1, v1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iget v0, v1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
