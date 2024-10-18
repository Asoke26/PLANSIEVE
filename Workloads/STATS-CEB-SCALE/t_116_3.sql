SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 3494.0
AND p.CommentCount >= 19
AND v.VoteTypeId = 3
AND u.Views >= 141
AND u.Views <= 321
AND u.UpVotes >= 51
AND ph.CreationDate >= 904

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;