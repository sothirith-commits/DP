.class public final synthetic Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/Activity;Landroid/app/AlertDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iput-object p3, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$1:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$2:Landroid/app/Activity;

    iput p1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$3:I

    iput-boolean p6, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$4:Z

    iput-object p5, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 8

    const-string p1, "$binding"

    iget-object v7, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$countDownTimer"

    iget-object v5, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;

    iget-object v3, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$2:Landroid/app/Activity;

    iget v1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$3:I

    iget-boolean v6, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda3;->f$4:Z

    move-object v0, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda5;-><init>(ILandroid/app/Activity;Landroid/app/AlertDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    iget-object p0, v7, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
