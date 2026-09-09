.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$6;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$6;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$6;->INSTANCE:Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    const-string p0, "it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager$prevSong$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$prevSong$1;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$prevSong$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$prevSong$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/music/MusicManager;->dispatchPlaybackControl(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
