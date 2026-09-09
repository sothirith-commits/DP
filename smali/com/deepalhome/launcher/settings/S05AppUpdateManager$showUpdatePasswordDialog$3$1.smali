.class public final synthetic Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $progressBar:Landroid/widget/ProgressBar;

.field final synthetic $progressText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 6

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$1;->$progressBar:Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$1;->$progressText:Landroid/widget/TextView;

    const-string v4, "showUpdatePasswordDialog$setProgressAreaVisible(Landroid/widget/ProgressBar;Landroid/widget/TextView;ZZ)V"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v3, "setProgressAreaVisible"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$1;->$progressBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$1;->$progressText:Landroid/widget/TextView;

    invoke-static {v0, p0, p1, p2}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->showUpdatePasswordDialog$setProgressAreaVisible(Landroid/widget/ProgressBar;Landroid/widget/TextView;ZZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
