.class public final synthetic Lcom/deepalhome/launcher/hud/HudLyricManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/server/OnSrvConnChangeListener;


# virtual methods
.method public final onSrvConnChange(Z)V
    .locals 1

    sput-boolean p1, Lcom/deepalhome/launcher/hud/HudLyricManager;->isConnected:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Vehicle system connection status: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HUDLyricManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
