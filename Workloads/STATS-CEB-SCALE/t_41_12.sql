SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 81
AND p.CommentCount >= 8
AND p.CommentCount <= 41

AND p.Id = ph.PostId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;