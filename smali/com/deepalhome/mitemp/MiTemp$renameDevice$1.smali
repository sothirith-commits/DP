.class public final Lcom/deepalhome/mitemp/MiTemp$renameDevice$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $normalizedName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/mitemp/MiTemp$renameDevice$1;->$normalizedName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/mitemp/MiTempDevice;

    const-string v0, "device"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTemp$renameDevice$1;->$normalizedName:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x7b

    invoke-static {p1, p0, v0, v1}, Lcom/deepalhome/mitemp/MiTempDevice;->copy$default(Lcom/deepalhome/mitemp/MiTempDevice;Ljava/lang/String;Lcom/deepalhome/mitemp/MiConnectionStatus;I)Lcom/deepalhome/mitemp/MiTempDevice;

    move-result-object p0

    return-object p0
.end method
