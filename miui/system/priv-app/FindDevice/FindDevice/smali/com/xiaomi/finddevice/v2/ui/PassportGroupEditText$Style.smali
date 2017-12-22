.class final enum Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;
.super Ljava/lang/Enum;
.source "PassportGroupEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

.field public static final enum FirstItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

.field public static final enum LastItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

.field public static final enum MiddleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

.field public static final enum SingleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const-string/jumbo v1, "FirstItem"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->FirstItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    .line 15
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const-string/jumbo v1, "MiddleItem"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->MiddleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    .line 16
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const-string/jumbo v1, "LastItem"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->LastItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    .line 17
    new-instance v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    const-string/jumbo v1, "SingleItem"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->SingleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->FirstItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->MiddleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->LastItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->SingleItem:Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->$VALUES:[Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;->$VALUES:[Lcom/xiaomi/finddevice/v2/ui/PassportGroupEditText$Style;

    return-object v0
.end method
