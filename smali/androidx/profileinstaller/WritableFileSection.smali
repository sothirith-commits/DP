.class public final Landroidx/profileinstaller/WritableFileSection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mContents:[B

.field public final mNeedsCompression:Z

.field public final mType:Landroidx/profileinstaller/FileSectionType;


# direct methods
.method public constructor <init>(Landroidx/profileinstaller/FileSectionType;[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/WritableFileSection;->mType:Landroidx/profileinstaller/FileSectionType;

    iput-object p2, p0, Landroidx/profileinstaller/WritableFileSection;->mContents:[B

    iput-boolean p3, p0, Landroidx/profileinstaller/WritableFileSection;->mNeedsCompression:Z

    return-void
.end method
