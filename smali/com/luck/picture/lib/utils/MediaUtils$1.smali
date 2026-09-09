.class public final Lcom/luck/picture/lib/utils/MediaUtils$1;
.super Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$call:Lcom/luck/picture/lib/interfaces/OnCallbackListener;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnCallbackListener;I)V
    .locals 0

    iput p4, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->val$call:Lcom/luck/picture/lib/interfaces/OnCallbackListener;

    invoke-direct {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->val$url:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/luck/picture/lib/utils/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->val$url:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/luck/picture/lib/utils/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/luck/picture/lib/entity/MediaExtraInfo;

    invoke-static {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    iget-object p0, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->val$call:Lcom/luck/picture/lib/interfaces/OnCallbackListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/luck/picture/lib/entity/MediaExtraInfo;

    invoke-static {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    iget-object p0, p0, Lcom/luck/picture/lib/utils/MediaUtils$1;->val$call:Lcom/luck/picture/lib/interfaces/OnCallbackListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
