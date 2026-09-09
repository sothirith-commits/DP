.class public Lcom/incall/serversdk/radio/RadioInfo$RadioStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/radio/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioStatus"
.end annotation


# static fields
.field public static final PLAYING:I = 0x1

.field public static final PLAYSTOP:I = 0x2

.field public static final SCANNING:I = 0x4

.field public static final SCANOVER:I = 0x3


# instance fields
.field final this$0:Lcom/incall/serversdk/radio/RadioInfo;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/radio/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/radio/RadioInfo$RadioStatus;->this$0:Lcom/incall/serversdk/radio/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
