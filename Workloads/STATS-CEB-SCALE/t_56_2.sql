SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 51
AND u.Views <= 195
AND u.UpVotes >= 135
AND v.BountyAmount >= 0.0
AND v.BountyAmount <= 350.0
AND u.CreationDate <= 1058
AND b.Date <= 1321

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;