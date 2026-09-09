.class public final Lcom/deepalhome/launcher/MainActivity$showSplash$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/MainActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/MainActivity$showSplash$1$1;->this$0:Lcom/deepalhome/launcher/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/MainActivity$showSplash$1$1;->this$0:Lcom/deepalhome/launcher/MainActivity;

    sget-object v0, Lcom/deepalhome/launcher/MainActivity;->Companion:Lcom/deepalhome/launcher/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/MainActivity;->showLauncher()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
