SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 2
AND p.Score >= 121
AND p.CommentCount >= 1
AND p.CommentCount <= 35

AND p.Id = ph.PostId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;