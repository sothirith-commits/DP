.class public final Lcom/deepalhome/launcher/music/MusicMetadataMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;
    .locals 1

    const-string v0, "title"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "singer"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildTitleProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object p0

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildSingerProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;-><init>(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;)V

    return-object v0
.end method

.method public static buildSingerProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;
    .locals 6

    const-string v0, "singer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->normalizeStrict(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "(?i)(feat\\.?|ft\\.?|with).*$"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\"

    invoke-static {v2, v4, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "[.,\uff0c\u3001;:\uff1a\'\"`~\uff5e!@#\uffe5%^&*+=_|/-]"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildTitleProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;
    .locals 6

    const-string v0, "title"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->normalizeStrict(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "\\([^)]*\\)"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "\\[[^]]*]"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "<[^>]*>"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "(?i)(feat\\.?|ft\\.?|with).*$"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\"

    invoke-static {v2, v4, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "[.,\u3002!?\uff1f\uff01:\uff1a;\'\"`~\uff5e!@#\uffe5%^&*+=_|/-]"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static containsEither(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static isDurationMatch(JJJ)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-lez v2, :cond_2

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, p4

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    return v3
.end method

.method public static isMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;)Z
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->strict:Ljava/lang/String;

    iget-object v1, p1, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->strict:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->containsEither(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->relaxed:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;->relaxed:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->containsEither(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSingerMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "request"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "candidateSinger"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildSingerProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;->singer:Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;)Z

    move-result p0

    return p0
.end method

.method public static isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "request"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "candidateTitle"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildTitleProfile(Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;->title:Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;Lcom/deepalhome/launcher/music/MusicMetadataMatcher$FieldProfile;)Z

    move-result p0

    return p0
.end method

.method public static normalizeStrict(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "You"

    const-string v1, "You"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xff08

    const/16 v1, 0x28

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const v0, 0xff09

    const/16 v1, 0x29

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3010

    const/16 v1, 0x5b

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3011

    const/16 v1, 0x5d

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x300a

    const/16 v1, 0x3c

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x300b

    const/16 v1, 0x3e

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x201c

    const/16 v1, 0x22

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x201d

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xb7

    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x30fb

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2022

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const v0, 0xff65

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const v0, 0xff0c

    const/16 v1, 0x2c

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3001

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const v0, 0xff1b

    const/16 v2, 0x3b

    invoke-static {p0, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const v0, 0xff1a

    const/16 v2, 0x3a

    invoke-static {p0, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const v0, 0xff0f

    const/16 v2, 0x2f

    invoke-static {p0, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-static {p0, v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x26

    invoke-static {p0, p1, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p1, Lkotlin/text/Regex;

    const-string v0, "\\s+"

    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
