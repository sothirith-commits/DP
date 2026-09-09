.class public final synthetic Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/navigation/VolumePopupWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->updatePopupPosition()V

    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    return-void

    :pswitch_1
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->updatePopupPosition()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
