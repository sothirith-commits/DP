.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/window/BaseAppWindow;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/window/BaseAppWindow;ZZI)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;->f$0:Lcom/deepalhome/launcher/window/BaseAppWindow;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;->f$1:Z

    iput-boolean p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;->f$2:Z

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;->f$1:Z

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;->f$0:Lcom/deepalhome/launcher/window/BaseAppWindow;

    const-string v3, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    check-cast v2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->setMenuExpanded(ZZ)V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    check-cast v2, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setFontSizeMenuExpanded(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
