.class public final Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;

.field public static final lrcTimestampRegex:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\[(\\d{1,2}):(\\d{2})(?:[.:](\\d{1,3}))?]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine;->lrcTimestampRegex:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
