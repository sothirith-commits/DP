.class public final synthetic Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZLjava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$1:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$4:Ljava/lang/String;

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget-boolean v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$1:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;->f$2:Ljava/io/File;

    invoke-static {v2, v3, p0, v0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$h5lQaTNOPQIJXRPCqlv9Eb6vZ4w(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZLjava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V

    return-void
.end method
