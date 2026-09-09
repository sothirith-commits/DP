.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_0

    if-lez p4, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p4

    const/4 p5, 0x1

    const/4 p6, 0x0

    const/high16 p7, 0x3f800000    # 1.0f

    move-object p2, p0

    invoke-virtual/range {p2 .. p7}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateProgressThumbPosition(IIZZF)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {p0, p2, p4, p6, p8}, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$lambda$wKCfKAloVugcunqZ00O2njmu-40(Lcom/deepalhome/launcher/music/MusicAppWindow;IIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
