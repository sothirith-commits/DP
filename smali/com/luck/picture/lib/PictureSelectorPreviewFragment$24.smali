.class public final Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnCallbackListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

.field public final synthetic val$position:I


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;II)V
    .locals 0

    iput p3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCall(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, [I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;->val$position:I

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p0, v0, p1, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$4200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;III)V

    return-void

    :pswitch_0
    check-cast p1, [I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;->val$position:I

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p0, v0, p1, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$4200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
