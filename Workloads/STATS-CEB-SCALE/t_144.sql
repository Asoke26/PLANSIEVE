SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId=1
AND p.AnswerCount>=0
AND ph.PostHistoryTypeId=5
AND u.UpVotes>=0
AND p.CreationDate>=29
AND p.CreationDate<=1542
AND pl.CreationDate>=147
AND pl.CreationDate<=1521
AND v.CreationDate>=29
AND u.CreationDate<=1542

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = pl.PostId
AND p.Id = ph.PostId;