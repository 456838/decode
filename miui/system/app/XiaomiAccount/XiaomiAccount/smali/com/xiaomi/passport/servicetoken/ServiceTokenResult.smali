.class public Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final HB:Landroid/content/Intent;

.field public final HC:Ljava/lang/String;

.field public final HD:Ljava/lang/String;

.field public final HE:Ljava/lang/String;

.field public final HF:Ljava/lang/String;

.field public final HG:Ljava/lang/String;

.field public final HH:Z

.field public final HI:Ljava/lang/String;

.field public final HJ:Ljava/lang/String;

.field public final HK:Ljava/lang/String;

.field private final HL:Z

.field public final errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/e;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/e;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "V2#"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    iput-boolean v4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HL:Z

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->values()[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_0

    :cond_1
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v0, "sid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    const-string/jumbo v0, "serviceToken"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    const-string/jumbo v0, "security"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    const-string/jumbo v0, "errorCode"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string/jumbo v0, "errorMessage"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    const-string/jumbo v0, "stackTrace"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    const-string/jumbo v0, "intent"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    const-string/jumbo v0, "slh"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    const-string/jumbo v0, "ph"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    const-string/jumbo v0, "cUserId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    const-string/jumbo v0, "peeked"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HL:Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->values()[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_2
.end method

.method private constructor <init>(Lcom/xiaomi/passport/servicetoken/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Mk(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Mj(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Mi(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Md(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Mc(Lcom/xiaomi/passport/servicetoken/d;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Mf(Lcom/xiaomi/passport/servicetoken/d;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Me(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Ml(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Mh(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Mb(Lcom/xiaomi/passport/servicetoken/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Mg(Lcom/xiaomi/passport/servicetoken/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/d;->Mm(Lcom/xiaomi/passport/servicetoken/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HL:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/servicetoken/d;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;-><init>(Lcom/xiaomi/passport/servicetoken/d;)V

    return-void
.end method

.method private LN(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic LO(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HL:Z

    return v0
.end method


# virtual methods
.method public LM(I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v5, 0x27

    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_0

    move v3, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    move v2, v0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    move-object v1, v0

    :goto_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    :goto_3
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "ServiceTokenResult{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "sid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ", serviceToken=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", security=\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", errorCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", errorMessage=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", errorStackTrace=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", intent="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", slh=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", ph=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", cUserId=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", peeked="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ", useV1Parcel="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v3, v1

    goto/16 :goto_0

    :cond_1
    move v2, v1

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "serviceTokenMasked"

    move-object v1, v0

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v0, "securityMasked"

    goto/16 :goto_3
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    if-nez v2, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    iget-boolean v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HL:Z

    iget-boolean v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HL:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq v2, v3, :cond_d

    return v1

    :cond_7
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_8
    return v1

    :cond_9
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    if-eqz v2, :cond_5

    :cond_a
    return v1

    :cond_b
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    if-eqz v2, :cond_6

    :cond_c
    return v1

    :cond_d
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_e
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_f
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_10
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_11
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_12
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_13
    :goto_0
    return v0

    :cond_14
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    if-eqz v2, :cond_e

    :cond_15
    return v1

    :cond_16
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    if-eqz v2, :cond_f

    :cond_17
    return v1

    :cond_18
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    if-eqz v2, :cond_10

    :cond_19
    return v1

    :cond_1a
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    if-eqz v2, :cond_11

    :cond_1b
    return v1

    :cond_1c
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    if-eqz v2, :cond_12

    :cond_1d
    return v1

    :cond_1e
    iget-object v2, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    if-eqz v2, :cond_13

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HL:Z

    if-eqz v3, :cond_b

    :goto_b
    add-int/2addr v0, v2

    return v0

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_7

    :cond_8
    move v0, v1

    goto :goto_8

    :cond_9
    move v0, v1

    goto :goto_9

    :cond_a
    move v0, v1

    goto :goto_a

    :cond_b
    move v2, v1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->LM(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HL:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->LN(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "sid"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "serviceToken"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "security"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "errorCode"

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "errorMessage"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "stackTrace"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "intent"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HB:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "slh"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HK:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ph"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HJ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cUserId"

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HI:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "peeked"

    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "V2#"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ordinal()I

    move-result v0

    goto :goto_0
.end method
