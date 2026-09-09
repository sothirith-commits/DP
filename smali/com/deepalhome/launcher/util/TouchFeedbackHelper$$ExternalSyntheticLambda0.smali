.class public final synthetic Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p1, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    const-string v0, "$feedbackView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playPressAnimation(Landroid/view/View;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    const-string v1, "$feedbackView"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playPressAnimation(Landroid/view/View;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
