.class public final Lcom/deepalhome/launcher/HelperActivity$showConnectionDialog$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic $port:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/deepalhome/launcher/HelperActivity;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroidx/appcompat/app/AlertDialog;Lcom/deepalhome/launcher/HelperActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/HelperActivity$showConnectionDialog$4$1;->$port:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/deepalhome/launcher/HelperActivity$showConnectionDialog$4$1;->$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/HelperActivity$showConnectionDialog$4$1;->this$0:Lcom/deepalhome/launcher/HelperActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke(Ljava/lang/Object;)Ljava/lang/Object;
.end method
