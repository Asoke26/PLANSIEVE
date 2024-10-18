SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score>=-1
AND p.Score<=19
AND p.CommentCount<=13
AND ph.PostHistoryTypeId=2
AND v.BountyAmount<=50
AND u.Views>=0
AND c.CreationDate>=34
AND c.CreationDate<=1544
AND ph.CreationDate<=1507
AND v.CreationDate>=29
AND v.CreationDate<=1545
AND u.CreationDate<=1519

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;