.class public final enum Lmiui/external/SdkConstants$SdkError;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/external/SdkConstants$SdkError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic asv:[Lmiui/external/SdkConstants$SdkError;

.field public static final enum asw:Lmiui/external/SdkConstants$SdkError;

.field public static final enum asx:Lmiui/external/SdkConstants$SdkError;

.field public static final enum asy:Lmiui/external/SdkConstants$SdkError;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lmiui/external/SdkConstants$SdkError;

    const-string/jumbo v1, "GENERIC"

    invoke-direct {v0, v1, v2}, Lmiui/external/SdkConstants$SdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/external/SdkConstants$SdkError;->asw:Lmiui/external/SdkConstants$SdkError;

    new-instance v0, Lmiui/external/SdkConstants$SdkError;

    const-string/jumbo v1, "NO_SDK"

    invoke-direct {v0, v1, v3}, Lmiui/external/SdkConstants$SdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/external/SdkConstants$SdkError;->asy:Lmiui/external/SdkConstants$SdkError;

    new-instance v0, Lmiui/external/SdkConstants$SdkError;

    const-string/jumbo v1, "LOW_SDK_VERSION"

    invoke-direct {v0, v1, v4}, Lmiui/external/SdkConstants$SdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/external/SdkConstants$SdkError;->asx:Lmiui/external/SdkConstants$SdkError;

    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/external/SdkConstants$SdkError;

    sget-object v1, Lmiui/external/SdkConstants$SdkError;->asw:Lmiui/external/SdkConstants$SdkError;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/external/SdkConstants$SdkError;->asy:Lmiui/external/SdkConstants$SdkError;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/external/SdkConstants$SdkError;->asx:Lmiui/external/SdkConstants$SdkError;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/external/SdkConstants$SdkError;->asv:[Lmiui/external/SdkConstants$SdkError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/external/SdkConstants$SdkError;
    .locals 1

    const-class v0, Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/external/SdkConstants$SdkError;

    return-object v0
.end method

.method public static values()[Lmiui/external/SdkConstants$SdkError;
    .locals 1

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->asv:[Lmiui/external/SdkConstants$SdkError;

    return-object v0
.end method
