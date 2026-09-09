.class public final Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$OnLyricPayloadAvailableListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V
    .locals 0

    const-string p0, "title"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "singer"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "payload"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance p3, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p5, p4}, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/LyricPayload;I)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
