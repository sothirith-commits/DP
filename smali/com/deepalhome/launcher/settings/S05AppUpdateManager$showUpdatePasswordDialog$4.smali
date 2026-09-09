.class public final Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $hiddenInput:Landroid/widget/EditText;

.field final synthetic $isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$4;->$isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$4;->$hiddenInput:Landroid/widget/EditText;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$4;->$isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$4;->$hiddenInput:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
