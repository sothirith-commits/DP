.class public final Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $accentColor:I

.field final synthetic $cellEmptyBorderColor:I

.field final synthetic $cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hiddenInput:Landroid/widget/EditText;

.field final synthetic $isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $strokeWidth:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/EditText;Ljava/util/List;III)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$hiddenInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$cells:Ljava/util/List;

    iput p4, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$cellEmptyBorderColor:I

    iput p5, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$accentColor:I

    iput p6, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$strokeWidth:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$isDownloading:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$hiddenInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$hiddenInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$cells:Ljava/util/List;

    iget v4, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$cellEmptyBorderColor:I

    iget v5, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$accentColor:I

    iget v6, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdatePasswordDialog$3$2;->$strokeWidth:I

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->showUpdatePasswordDialog$updateCells(Landroid/widget/EditText;Ljava/util/List;IIIZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
