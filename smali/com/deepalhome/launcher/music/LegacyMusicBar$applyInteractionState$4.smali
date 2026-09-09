.class public final Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/music/LegacyMusicBar;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/LegacyMusicBar;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$4;->this$0:Lcom/deepalhome/launcher/music/LegacyMusicBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$4;->this$0:Lcom/deepalhome/launcher/music/LegacyMusicBar;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentMusicAppPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->launchCurrentMusicApp(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
