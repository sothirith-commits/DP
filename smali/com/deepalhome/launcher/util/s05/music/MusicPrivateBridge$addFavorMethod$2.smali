.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$addFavorMethod$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$addFavorMethod$2;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$addFavorMethod$2;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const-string v0, "addFavor"

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->access$findControlMethod(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method
